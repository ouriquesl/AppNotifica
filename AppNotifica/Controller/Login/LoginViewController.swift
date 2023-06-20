//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 06/06/23.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault{
    
    //MARK: - Clousures
    var onRegisterTap: (() -> Void)?
    var onLogarTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLogarTap = {
            self.onLogarTap?()
        }
        
        return loginView
    }()
    
    override func loadView(){
        self.view = loginView
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.title = "Logar"
       
    }
}





