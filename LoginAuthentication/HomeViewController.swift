//
//  HomeViewController.swift
//  LoginAuthentication
//
//  Created by Mekala Vamsi Krishna on 02/07/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func logOutTapped(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginPage") as! ViewController
        vc.navigationController?.pushViewController(vc, animated: true)
    }
    
}
