//
//  RedViewController.swift
//  Kadai7
//
//  Created by Hiroatsu on 2021/10/19.
//

import UIKit

class RedViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }
    @IBAction private func calculateButton(_ sender: Any) {
        let number1 = Int(textField1.text!) ?? 0
        let number2 = Int(textField2.text!) ?? 0
        let result = number1 + number2
        resultLabel.text = String(result)

        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
