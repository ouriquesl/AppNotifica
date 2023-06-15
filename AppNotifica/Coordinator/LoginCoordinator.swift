//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 06/06/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onRegisterTap = {
            self.gotoRegister()
        }
    }
    func gotoRegister(){
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
