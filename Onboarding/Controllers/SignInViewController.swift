//
//  SignInViewController.swift
//  Onboarding
//
//  Created by Victor  on 5/21/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var newUserSignUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        loginButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 10
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "hasViewedOnboarding")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
            present(homeViewController, animated: true, completion: nil)
        }
    }
    
}
