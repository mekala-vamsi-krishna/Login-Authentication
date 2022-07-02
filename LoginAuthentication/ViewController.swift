//
//  ViewController.swift
//  LoginAuthentication
//
//  Created by Mekala Vamsi Krishna on 01/07/22.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
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
    @IBAction func signinTapped(_ sender: UIButton) {
        
        if email.text == "" {
            let alert = UIAlertController(title: "Alert", message: "email or password is missing", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        } else if password.text == "" {
            let alert = UIAlertController(title: "Alert", message: "email or password is missing", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        } else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginSuccesfullPage") as! HomeViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUp") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)

    }
    @IBAction func eyeTapped(_ sender: UIButton) {
        
        if (iconClick == true ) {
            password.isSecureTextEntry = true
        } else {
            password.isSecureTextEntry = false
        }
        
        iconClick = !iconClick
    }
    
}

