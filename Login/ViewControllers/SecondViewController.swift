//
//  SecondViewController.swift
//  Login
//
//  Created by Kirill Lozovoi on 10/5/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var company: UILabel!
    @IBOutlet var otdel: UILabel!
    @IBOutlet var m: UILabel!
    
    var data: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        
        name.text = data.name
        surname.text = data.surname
        company.text = data.company
        otdel.text = data.age
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let descriptionVC = segue.destination as? ThirdViewController else {return}
        descriptionVC.bio = data.bio
    }
}



extension UIViewController {
     func setColor() {
        let color1 = UIColor(red: 255/255, green: 55/255, blue: 200/255, alpha: 1).cgColor
        let color2 = UIColor(red: 55/255, green: 100/255, blue: 255/255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [color1,color2]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
