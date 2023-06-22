//
//  NovaOcorrenciaCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 22/06/23.
//

import Foundation

import UIKit

class NovaOcorrenciaCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var novaOcorrenciaViewController: NovaOcorrenciaViewController = {
        let viewController = NovaOcorrenciaViewController()
        //adiciona o nome home na tabbar
        viewController.tabBarItem.title = "Nova ocorrência"
        viewController.tabBarItem.image = UIImage(systemName: "note.text.badge.plus")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
