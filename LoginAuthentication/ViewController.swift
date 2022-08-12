//
//  ViewController.swift
//  LoginAuthentication
//
//  Created by Mekala Vamsi Krishna on 01/07/22.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
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
        
        if let email = email.text, let password = password.text {
            Auth.auth().signIn(withEmail: email, password: password) { /*[weak self]*/ authResult, error in
                /*guard let strongSelf = self else { return }*/
                
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "SigninToHome", sender: self)
                }
            }
        }
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "SigninToSignup", sender: self)
    }
    
    func showAlert(message: String) {
        if email.text == "" && password.text == "" {
            let ac = UIAlertController(title: "Incorrect", message: message, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            present(ac, animated: true, completion: nil)
        }
    }
}

