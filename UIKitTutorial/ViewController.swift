//
//  ViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Can on 2.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        
    }
    
    @IBAction func didTapLoginButton(_ sender:UIButton){
        
        if usernameTextField.text == "yusufcanbircan", passwordTextField.isHidden{
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
        } else {
            if usernameTextField.text != "yusufcanbircan"{
                errorLabel.text = "Error! Username is wrong!"
                errorLabel.isHidden = false
            } else if !(passwordTextField.isHidden), passwordTextField.text == "123456"{
                activityIndicatorView.startAnimating()
                errorLabel.isHidden = true
            } else {
                errorLabel.text = "Error! Password is wrong!"
                errorLabel.isHidden = false
            }
        }
        
    }

}

