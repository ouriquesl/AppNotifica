//
//  ButtonDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 12/06/23.
//

import Foundation
import UIKit




class ButtonDefault: UIButton{
    init(text:String){
        super.init(frame: .zero)
        initDefault(text:text)
        
        
    }
    
    private func initDefault(text:String){
        self.setTitle(text, for: .normal)
        self.backgroundColor = .buttonBackgroundColor
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
        
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
