//
//  ViewController.swift
//  UpDown
//
//  Created by opfic on 8/12/25.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - Properties
    // MARK: IBOutlets
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var turnCountLabel: UILabel!
    @IBOutlet private weak var inputField: UITextField!
    // MARK: - Variables
    var randomNumber: UInt32 = 0
    var turnCount = 0
    
    // MARK: - Methods
    // 사용자가 제출 버튼을 탭하는 액션
    @IBAction func touchUpSubmitButton(_ sender: UIButton) {
        guard let inputText = self.inputField.text, !inputText.isEmpty else {
            print("입력값 없음")
            return
        }
        
        guard let inputNumber = UInt32(inputText) else {
            print("입력값이 잘못되었음")
            return
        }
        
        turnCount += 1
        self.turnCountLabel.text = "\(turnCount)"
        
        if inputNumber < randomNumber {
            self.resultLabel.text = "Up"
        }
        else if randomNumber < inputNumber {
            self.resultLabel.text = "Down"
        }
        else {
            self.resultLabel.text = "Correct"
        }
    }

    // 사용자가 리셋 버튼을 탭하는 액션
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        self.initializedGame()
    }
    
    @IBAction func tabBackground(_ sender: UITapGestureRecognizer) {
        // inputField의 키보드를 숨김
        print("tap background view")
//        self.inputField.resignFirstResponder()
         self.view.endEditing(true) //  뷰에서 편집 중인 모든 포커싱을 제거
//         self.inputField.endEditing(true)
    }
    
    // MARK: - Custom Methods
    func initializedGame() {
        self.randomNumber = arc4random() % 25
        // func arc4random() -> UInt32
        self.turnCount = 0
        
        self.resultLabel.text = "Start"
        self.turnCountLabel.text = "\(turnCount)"
        self.inputField.text = nil
        
        print("임의의 숫자: \(self.randomNumber)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initializedGame()
    }
}

