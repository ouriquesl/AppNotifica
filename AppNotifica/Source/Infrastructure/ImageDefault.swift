//
//  ImageDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 12/06/23.
//

import Foundation
import UIKit




class ImageDefault: UIImageView{
    init(image:String){
        super.init(frame: .zero)
        initImageDefault(image:image)
        atualizarImagem()
        
    }
    
    private func initImageDefault(image:String){
        self.image = UIImage(named: "ImageLogin")
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func atualizarImagem() {
            if traitCollection.userInterfaceStyle == .dark {
                self.image = UIImage(named: "ImageLoginDark")
            } else {
                self.image = UIImage(named: "ImageLogin")
            }
        }
        
        override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)
            if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
                atualizarImagem()
            }
        }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
