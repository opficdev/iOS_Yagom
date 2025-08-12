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
    
    // MARK: - Methods
    // 사용자가 제출 버튼을 탭하는 액션
    @IBAction func touchUpSubmitButton(_ sender: UIButton) {
        print("touch up submit button")
    }

    // 사용자가 리셋 버튼을 탭하는 액션
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

