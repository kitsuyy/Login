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
        
        
        let color1 = UIColor(red: 255/255, green: 55/255, blue: 200/255, alpha: 1).cgColor
        let color2 = UIColor(red: 55/255, green: 100/255, blue: 255/255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [color1,color2]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
