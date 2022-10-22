//
//  LoginView.swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation
import UIKit
import SnapKit

class LoginView: UIView {
    
    var viewModel: LoginViewModel
    
     let emailTextField: UITextField = {
            let field = UITextField()
            field.autocapitalizationType = .none
            field.autocorrectionType = .no
            field.returnKeyType = .continue
            field.layer.cornerRadius = 12
            field.layer.borderWidth = 1
            field.layer.borderColor = UIColor.lightGray.cgColor
            field.placeholder = "Email Address..."
            field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
            field.leftViewMode = .always
            field.backgroundColor = .secondarySystemBackground
            field.translatesAutoresizingMaskIntoConstraints = false
            return field
        }()
    
     let passwordTextField: UITextField = {
           let field = UITextField()
           field.autocapitalizationType = .none
           field.autocorrectionType = .no
           field.returnKeyType = .continue
           field.layer.cornerRadius = 12
           field.layer.borderWidth = 1
           field.layer.borderColor = UIColor.lightGray.cgColor
           field.placeholder = "Password..."
           field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
           field.leftViewMode = .always
           field.backgroundColor = .secondarySystemBackground
           field.translatesAutoresizingMaskIntoConstraints = false
           field.isSecureTextEntry = true
           return field
       }()
       
    let loginBtn: BaseButton = {
        var button = BaseButton()
        button.setTitle("Log in", for: .normal)
        button.isEnabled = false
        return button
    }()
    
       let registerBtn: UIButton = {
         var button = UIButton()
         button.setTitle("Register", for: .normal)
         button.backgroundColor = .clear
         button.setTitleColor(.systemBlue, for: .normal)
         button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
         button.translatesAutoresizingMaskIntoConstraints = false
         return button
     }()
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        backgroundColor = .white
        
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginBtn)
        addSubview(registerBtn)
        setupUI()
    }
    
    private func setupUI() {
        emailTextField.snp.makeConstraints({
            $0.top.equalTo(safeAreaLayoutGuide).offset(170)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(36)
            $0.leading.equalTo(self).offset(34)
            $0.trailing.equalTo(self).offset(-34)
        })
        
        passwordTextField.snp.makeConstraints({
            $0.top.equalTo(emailTextField.snp.bottom).offset(18)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(36)
            $0.leading.equalTo(self).offset(34)
            $0.trailing.equalTo(self).offset(-34)
        })
        
        loginBtn.snp.makeConstraints({
            $0.top.equalTo(passwordTextField.snp.bottom).offset(18)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(36)
            $0.leading.equalTo(self).offset(34)
            $0.trailing.equalTo(self).offset(-34)
        })
        
        registerBtn.snp.makeConstraints({
            $0.top.equalTo(safeAreaLayoutGuide).offset(0)
            $0.leading.equalTo(self).offset(270)
            $0.trailing.equalTo(self).offset(-10)
            $0.height.equalTo(36)
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
