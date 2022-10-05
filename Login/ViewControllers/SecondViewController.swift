//
//  SecondViewController.swift
//  Login
//
//  Created by Kirill Lozovoi on 10/5/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let color1 = UIColor(red: 255/255, green: 55/255, blue: 200/255, alpha: 1).cgColor
        let color2 = UIColor(red: 55/255, green: 100/255, blue: 255/255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [color1,color2]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
