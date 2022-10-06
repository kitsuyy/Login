//
//  ThirdViewController.swift
//  Login
//
//  Created by Kirill Lozovoi on 10/5/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var bioInfoLabel: UILabel!
    
    var bio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        bioInfoLabel.text = bio
    }
}
