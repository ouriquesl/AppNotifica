//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 13/06/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController{
    
    
    var viewMain = RegisterView()
    override func loadView(){
        self.view = viewMain
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

