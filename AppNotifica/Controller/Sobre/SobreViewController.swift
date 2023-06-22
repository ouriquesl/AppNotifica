//
//  SobreViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 22/06/23.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault{
    //MARK: - Closeres
    
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
        return sobreView
        
    }()
    
    override func loadView() {
        self.view = sobreView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
        
        
    }
}
