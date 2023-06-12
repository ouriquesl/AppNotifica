//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 12/06/23.
//

import Foundation
import UIKit




class LabelDefault: UILabel{
    init(text:String){
        super.init(frame: .zero)
        initDefault(text:text)
        
        
    }
    
    private func initDefault(text:String){
        self.textColor = .textLabelColor
        self.font = UIFont(name: "SFProDisplay-Light", size: 16)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = "Registre e gerencie as ocorrências do seu IF"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
