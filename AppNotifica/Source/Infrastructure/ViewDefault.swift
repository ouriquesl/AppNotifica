//
//  ViewDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 20/06/23.
//

import Foundation
import UIKit

class ViewDefault: UIView{
    //MARK: - Initialize
     override init(frame: CGRect) {
         super.init(frame: frame)
         self.backgroundColor = .viewBackgroundColor
         setupVisualElements()
     }
    func setupVisualElements(){
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented ")
    }
    
}
