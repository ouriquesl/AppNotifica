//
//  RegisterView.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 13/06/23.
//

import Foundation
import UIKit

class RegisterView: UIView {
    //MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackgroundColor
        setupVisualElements()
    }
    
    //MARK: - Clousures
    var onLogarTap: (() -> Void)?
    
    //MARK: - Properties
    //cria a função para imagem do login
    //var imageLogin = ImageDefault(image: "ImageLogin")
    
    //cria a função para imageLabel
    var imageLabel = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.", font: UIFont.systemFont(ofSize: 27, weight: .regular))
    
    //cria a função para o emailTextField
    var emailTextField = TextFieldDefault(text: "E-mail")
    
    //cria a função para a senhaTextField
    var senhaTextField = TextFieldDefault(text: "Senha")
    
    //criar a função para o confirmaTextField
    var confirmaTextField = TextFieldDefault(text: "Confirmar Senha")
    
    //cria a função para a buttonLogar
    var buttonLogar = ButtonDefault(text: "LOGAR")
    
    //cria a função para a buttonLogar
    var buttonRegistrar = ButtonDefault(text: "REGISTAR")
    
    
    func setupVisualElements(){
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        
        buttonLogar.addTarget(self, action: #selector(logarTap), for: .touchUpInside)
        NSLayoutConstraint.activate([
          
            
            imageLabel.widthAnchor.constraint(equalToConstant: 340),
            imageLabel.heightAnchor.constraint(equalToConstant: 50),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 188),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            confirmaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            confirmaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: confirmaTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
        
        
        ])
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented ")
    }
    
    //MARK: - Actions
    @objc
    private func logarTap(){
        onLogarTap?()
    }
    
}
