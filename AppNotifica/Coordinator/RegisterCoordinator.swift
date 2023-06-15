//
//  RegisterCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 13/06/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onLogarTap = {
            self.gotoLogar()
            
        }
    }
        func gotoLogar(){
            let coordinator = LoginCoordinator(navigationController: navigationController)
            coordinator.start()
        }
}
