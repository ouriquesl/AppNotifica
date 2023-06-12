//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 12/06/23.
//

import Foundation
import UIKit




class TextFieldDefault: UITextField{
    init(text:String){
        super.init(frame: .zero)
        initDefault(text:text)
        
        
    }
    
    private func initDefault(text:String){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .textFieldBackgroundColor
        self.placeholder = text

    }
        
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
