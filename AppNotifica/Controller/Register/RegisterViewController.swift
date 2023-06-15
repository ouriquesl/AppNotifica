//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 13/06/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController{
    //MARK: - Clousures
    var onLogarTap: (() -> Void)?
    
    lazy var registerView: RegisterView = {
        let registerView = RegisterView()
        registerView.onLogarTap = {
            self.onLogarTap?()
        }
        return registerView
    }()
    
    override func loadView(){
        self.view = registerView
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

