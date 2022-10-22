//
//  LoginCoordinator .swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation

final class LoginCoordinator: BaseCoordinator {
    
    var router: Router
    var moduleFactory: ModuleFactoryProtocol
    var isLogin: Bool?
    
    init(router: Router, moduleFactory: ModuleFactoryProtocol) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
    
    
    override func start() {
        startLogin()
       
    }
    
    private func startLogin() {
        let loginScreen = moduleFactory.makeLoginViewController()
        isLogin = loginScreen.viewModel.checkLoginStatus()
        
        loginScreen.viewModel.registerScreen = { [weak self] in
            guard let self = self else { return }
            self.showRegisterScreen()
        }
        
        router.push(loginScreen, animated: true)
        
    }
    
    private func showRegisterScreen() {
        let registerScreen = moduleFactory.makeRegisterViewController()
        router.push(registerScreen, animated: true)
        
       /* registerScreen.viewModel.finishFlow = { [weak self] in
            if isLogin {
                router.pop(animated: true)
            } else {
                print("Noregistration")
            }
        }
        */
        registerScreen.viewModel.loginBack = { [weak self] in
            self!.router.pop(animated: true)
        }
    }
    
}
