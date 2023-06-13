//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 12/06/23.
//

import Foundation
import UIKit




class LabelDefault: UILabel{
    init(text:String, font: UIFont){
        super.init(frame: .zero)
        initDefault(text:text, font:font)
        
        
    }
    
    private func initDefault(text:String, font: UIFont){
        self.textColor = .textLabelColor
        self.font = font
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.adjustsFontSizeToFitWidth = true
        self.numberOfLines = 0
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
