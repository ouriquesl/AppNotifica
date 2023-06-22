//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 15/06/23.

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
    }
}
