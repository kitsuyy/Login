//
//  ViewController.swift
//  Login
//
//  Created by Kirill Lozovoi on 10/1/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        if usernameTF.text == "Username" && passwordTF.text == "Password" {
            welcomeVC.usernameLabel = usernameTF.text
        } else {
            showAlert(withTitle: "Error", andMessage: "Invalid Username or Password!")
        }
    }
    
    // MARK: - UIAction
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        switch sender {
        case forgotUserNameButton:
            showAlert(withTitle: "Really?", andMessage: "Your name is Username 😉")
        default:
            showAlert(withTitle: "Really?", andMessage: "Your password is Password 😉")
        }
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
