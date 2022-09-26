//
//  ModuleFactory .swift
//  ChatApp2
//
//  Created by Admin on 24.09.2022.
//

import Foundation
import UIKit

protocol ModuleFactoryProtocol {
    func makeTabBarController()-> TabBarController
    func makeMainChatsViewController()-> MainChatsViewController
    func makeLoginViewController()-> LoginViewController
    func makeRegisterViewController()-> RegisterViewController
    func makeSettingsViewController()-> SettingsViewController
}

class ModuleFactory: ModuleFactoryProtocol {
    
    func makeTabBarController() -> TabBarController {
        return TabBarController()
    }
    
    func makeMainChatsViewController() -> MainChatsViewController {
        let viewModel = MainChatsViewModel()
        return MainChatsViewController(viewModel: viewModel)
    }
    
    func makeLoginViewController() -> LoginViewController {
        let viewModel = LoginViewModel()
        return LoginViewController(viewModel: viewModel)
    }
    
    func makeRegisterViewController() -> RegisterViewController {
        let viewModel = RegisterViewModel()
        return RegisterViewController(viewModel: viewModel)
    }
    
    func makeSettingsViewController() -> SettingsViewController {
        let viewModel = SettingsViewModel()
        return SettingsViewController(viewModel: viewModel)
    }
    
    
}


