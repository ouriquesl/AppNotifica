//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFBIOTIC05 on 06/06/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupVisualElements()
    }
    //cria a função para imagem do login
    var imageLogin: UIImageView = {
        let imagem = UIImageView()
        imagem.image = UIImage(named: "ImageLogin")
        imagem.contentMode = .scaleAspectFit
        imagem.translatesAutoresizingMaskIntoConstraints = false
        
        
        return imagem
    }()
    
    //cria a função para imageLabel
    var imageLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Light", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Registre e gerencie as ocorrências do seu IF"
        return label
        
    }()
    
    //cria a função para o emailTextField
    var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "E-mail"

        return textField
        
    }()
    
    //cria a função para a senhaTextField
    var senhaTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "Senha"

        return textField
        
    }()
    
    //cria a função para a buttonLogar
    var buttonLogar: UIButton = {
        let button = UIButton()
        
        button.setTitle("LOGAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
        
    }()
    
    var buttonRegistrar: UIButton = {
        let button = UIButton()
        
        button.setTitle("REGISTRAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
        
    }()
    
    
    func setupVisualElements(){
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
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
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented ")
    }
    
}
    
    
