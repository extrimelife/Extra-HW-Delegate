//
//  SecondViewController.swift
//  Delegate
//
//  Created by brubru on 24.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var smileLabel: UILabel!
    
    var extraLabelForSmile: String!
    
    var delegate: SecondViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        smileLabel.text = extraLabelForSmile
        textField.delegate = self
    }
    
    @IBAction func goBackButtonPressed() {
        delegate.setSmile(smileLabel)
        dismiss(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        textField.endEditing(true)
    }
}

extension SecondViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        smileLabel.text = textField.text
    }
}
