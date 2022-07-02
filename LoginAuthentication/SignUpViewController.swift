//
//  SignUpViewController.swift
//  LoginAuthentication
//
//  Created by Mekala Vamsi Krishna on 02/07/22.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    var iconClick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // corner radius
        uiView.layer.cornerRadius = 50

        // shadow
        uiView.layer.shadowColor = UIColor.black.cgColor
        uiView.layer.shadowOffset = CGSize(width: 3, height: 3)
        uiView.layer.shadowOpacity = 0.7
        uiView.layer.shadowRadius = 4.0
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        if email.text == "" {
            
            let alert = UIAlertController(title: "Empty Text Field", message: "Please fill all the text fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            
        } else if password.text == "" {
            
            let alert = UIAlertController(title: "Empty Text Field", message: "Please fill all the text fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            
        } else if confirmPassword.text == "" {
            
            let alert = UIAlertController(title: "Empty Text Field", message: "Please enter fill all the text fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            
        } else {
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginPage") as! ViewController
            vc.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    @IBAction func signUpPasswordEyeTapped(_ sender: UIButton) {
        if (iconClick == true ) {
            password.isSecureTextEntry = true
        } else {
            password.isSecureTextEntry = false
        }
        
        iconClick = !iconClick
    }
    
    @IBAction func confirmPasswordEyeTapped(_ sender: UIButton) {
        if (iconClick == true ) {
            confirmPassword.isSecureTextEntry = true
        } else {
            confirmPassword.isSecureTextEntry = false
        }
        
        iconClick = !iconClick
    }
    
}
