//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 12/06/23.
//

import Foundation
import UIKit




class TextFieldDefault: UITextField{
    init(placeholder:String){
        super.init(frame: .zero)
        
        initDefault(placeholder:placeholder,keyBoardType: .default,  returnKeyType: .default)
        
        
    }
    init(placeholder:String, keyBoardType:UIKeyboardType, returnKeyType: UIReturnKeyType){
        super.init(frame: .zero)
        
        initDefault(placeholder:placeholder, keyBoardType: .default, returnKeyType: .default)
        
        
    }
    
    private func initDefault(placeholder:String, keyBoardType:UIKeyboardType, returnKeyType: UIReturnKeyType){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .textFieldBackgroundColor
        self.placeholder = placeholder
        self.keyboardType = keyBoardType
        self.returnKeyType = returnKeyType

    }
        
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
