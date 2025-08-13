//
//  ViewController.swift
//  ColorPicker
//
//  Created by opfic on 8/12/25.
//

import UIKit

fileprivate struct ColorComponent {
    typealias SliderTag = Int
    typealias Component = Int
    
    static let count = 4
    
    static let red = 0
    static let green = 1
    static let blue = 2
    static let alpha = 3
    
    static func tag(for component: Component) -> Int {
        return component + 100
    }
    
    static func component(from tag: SliderTag) -> Component {
        return tag - 100
    }
}

fileprivate struct ViewTag {
    static let sliderRed = 100
    static let sliderGreen = 101
    static let sliderBlue = 102
    static let sliderAlpha = 103
}

class ViewController: UIViewController {
    // MARK: - Properties
    // MARK: IBOutlets
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    // MARK: Privates
    private let rgbStep = 255.0
    private let numberOfRGBStep = 256
    private let numberOfAlphaStep = 11
    
    private func matchViewColorWithCurrentValue() {
        guard let redSlider = self.view.viewWithTag(ViewTag.sliderRed) as? UISlider,
              let greenSlider = self.view.viewWithTag(ViewTag.sliderGreen) as? UISlider,
              let blueSlider = self.view.viewWithTag(ViewTag.sliderBlue) as? UISlider,
              let alphaSlider = self.view.viewWithTag(ViewTag.sliderAlpha) as? UISlider else { return }
        
        // UIColor의 Red, Green, Blue, Alpha 값을 [0, 1] 범위의 실수값으로 변경
        let red = CGFloat(redSlider.value) / CGFloat(self.rgbStep)
        let green = CGFloat(greenSlider.value) / CGFloat(self.rgbStep)
        let blue = CGFloat(blueSlider.value) / CGFloat(self.rgbStep)
        let alpha = CGFloat(alphaSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        self.colorView.backgroundColor = color
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        guard (ViewTag.sliderRed...ViewTag.sliderAlpha).contains(sender.tag) else {
            print("wrong slider tag")
            return
        }
        
        let component = ColorComponent.component(from: sender.tag)
        let row = Int(sender.value * (ColorComponent.alpha == component ? 10 : 1))
        
        self.pickerView.selectRow(row, inComponent: component, animated: false)
        
        self.matchViewColorWithCurrentValue()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0..<self.pickerView.numberOfComponents {
            let numberOfRows = self.pickerView.numberOfRows(inComponent: i)
            self.pickerView.selectRow(numberOfRows - 1, inComponent: i, animated: false)
        }
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - UIPickerViewDataSource
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return component == ColorComponent.alpha ? self.numberOfAlphaStep : self.numberOfRGBStep
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return ColorComponent.count
    }
    
    // MARK: - UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == ColorComponent.alpha {
            return String(format: "%1.1lf", Double(row) * 0.1)
        }
        return "\(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let sliderTag = ColorComponent.tag(for: component)
        
        guard let slider = self.view.viewWithTag(sliderTag) as? UISlider else { return }
        
        if component == ColorComponent.alpha {
            slider.setValue(Float(row) * 0.1, animated: false)
        }
        else {
            slider.setValue(Float(row), animated: false)
        }
        
        self.matchViewColorWithCurrentValue()
    }
}
