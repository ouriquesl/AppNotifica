//
//  TabBarViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 22/06/23.
//

import Foundation
import UIKit

class TabBarController: UITabBarController{
    
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        self.tabBar.tintColor = .buttonBackgroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackgroundColor
        
    }
}
