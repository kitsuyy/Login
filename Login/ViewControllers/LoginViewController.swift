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
    
    private let userData = User.userLog()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControlers = tabBarVC.viewControllers else { return }
        
        viewControlers.forEach { viewController in
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.usernameLabel = userData.username
            } else if let navigationVC = viewController as? UINavigationController {
                guard let secondVC = navigationVC.topViewController as? SecondViewController else { return }
                
                secondVC.data = Person.userData()
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - UIAction
    
    @IBAction func logInPressed() {
        guard usernameTF.text == userData.username, passwordTF.text == userData.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(userData.username) 😉")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(userData.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
