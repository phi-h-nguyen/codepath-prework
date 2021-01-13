//
//  ViewController.swift
//  Prework
//
//  Created by Phi Nguyen on 1/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor;
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.purple;
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        backgroundView.backgroundColor = UIColor.lightGray;
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if textField.text == "" {
            textLabel.text = "Goodbye !";
        } else {
            textLabel.text = textField.text;
        }
        textField.text = "";
        view.endEditing(true);
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Phi!!";
        textLabel.textColor = UIColor.black;
        backgroundView.backgroundColor = backgroundColor;
        
    }
}

