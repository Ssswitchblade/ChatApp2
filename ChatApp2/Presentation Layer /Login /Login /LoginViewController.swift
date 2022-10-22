//
//  LoginViewController.swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation
import UIKit
import Combine

class LoginViewController: UIViewController {
    
    var viewModel: LoginViewModel
    private lazy var loginView = self.view as? LoginView
    var subscriptions = Set<AnyCancellable>()
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        setupBindings()
        
    }
    
    override func loadView() {
        super.loadView()
        let view = LoginView(viewModel: viewModel)
        self.view = view 
    }
    
    private func setupBindings() {
        
        loginView?.emailTextField.textPublisher
            .assign(to: \.email, on: viewModel)
            .store(in: &subscriptions)
        
        loginView?.passwordTextField.textPublisher
            .assign(to: \.password, on: viewModel)
            .store(in: &subscriptions)
        
        loginView?.loginBtn.tapPublisher
            .sink(receiveValue: { [weak self] _ in
                self?.viewModel.logInBtnTpd()
            })
            .store(in: &subscriptions)
        
        loginView?.registerBtn.tapPublisher
            .sink(receiveValue: { [weak self] in
                self?.viewModel.registerBtnDidTpd()
            })
            .store(in: &subscriptions)
        
        viewModel.inputValid
            .assign(to: \.isValid, on: loginView?.loginBtn)
            .store(in: &subscriptions)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
