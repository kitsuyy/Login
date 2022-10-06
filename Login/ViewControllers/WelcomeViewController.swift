//
//  WelcomeViewController.swift
//  Login
//
//  Created by Kirill Lozovoi on 10/2/22.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var gifView: UIImageView!
    @IBOutlet var welcomeLabel: UILabel!
    
    var usernameLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Gamarjoba, \(usernameLabel ?? "")!"
        gifView.loadGif(name: "pepefrg-4")
        setColor()
    }
}
