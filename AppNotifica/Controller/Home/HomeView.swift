//
//  HomeView.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 15/06/23.
//

import Foundation
import UIKit

class HomeView: UIView{
    //MARK: - Closures
    //MARK: - Properts
    //MARK: - Inits
    
    override init(frame:CGRect){
        super.init(frame: frame)
        setupVisualElements()
        self.backgroundColor = .viewBackgroundColor
    }
    
    required init?  (coder:NSCoder){
        fatalError(" Init(coder: ) has not been implementd")
    }
    func setupVisualElements(){
        //self.setupVisualElements
    }
    
}
