//
//  TabBarViewController.swift
//  Login
//
//  Created by Kirill Lozovoi on 10/5/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppereance = UITabBarAppearance()
        tabBarAppereance.configureWithOpaqueBackground()
        tabBar.scrollEdgeAppearance = tabBarAppereance
        tabBar.standardAppearance = tabBarAppereance
    }
}
