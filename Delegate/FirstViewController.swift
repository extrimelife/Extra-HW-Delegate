//
//  ViewController.swift
//  Delegate
//
//  Created by brubru on 24.08.2022.
//

import UIKit

protocol SecondViewControllerDelegate {
    func setSmile(_ label: UILabel)
}

final class FirstViewController: UIViewController {
    
    @IBOutlet var smileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVc = segue.destination as? SecondViewController else { return }
        secondVc.extraLabelForSmile = smileLabel.text
        secondVc.delegate = self
    }
    
    
    
    @IBAction func goButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "SecondVc", sender: self)
    }
}

extension FirstViewController: SecondViewControllerDelegate {
    func setSmile(_ label: UILabel) {
        smileLabel.text = label.text
    }
}
