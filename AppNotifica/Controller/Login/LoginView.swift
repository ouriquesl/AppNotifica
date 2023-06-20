//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 06/06/23.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
   
    
    //MARK: - Closure
    var onRegisterTap: (() -> Void)?
    var onLogarTap: (() -> Void)?
    
    
    //MARK: - Properties
    //cria a função para imagem do login
    var imageLogin = ImageDefault(image: "ImageLogin")
    
    //cria a função para imageLabel
    var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    //cria a função para o emailTextField
    var emailTextField = TextFieldDefault(placeholder: "E-mail", keyBoardType: .emailAddress, returnKeyType: .next)
    
    //cria a função para a senhaTextField
    var senhaTextField: TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true
        
        return text
    }()
    

    //cria a função para a buttonLogar
    var buttonLogar = ButtonDefault(text: "LOGAR")
    
    var buttonRegistrar = ButtonDefault(text: "REGISTRAR")
    
    
    override func setupVisualElements(){
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        buttonLogar.addTarget(self, action: #selector(logarTap), for: .touchUpInside)
        NSLayoutConstraint.activate([
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 239),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
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
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
        
        
        ])
        
    }
    
    
    
    
    
    //MARK: - Actions
    @objc
    private func registerTap(){
        onRegisterTap?()
    }
    @objc
    private func logarTap(){
        onLogarTap?()
    }
    
}

extension LoginView: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}




    
    
