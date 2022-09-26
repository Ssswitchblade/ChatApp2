//
//  CoordinatorFactory.swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation

protocol CoordinatorFactoryProtocol {
    
    func makeAppCoordinator(router: Router)-> AppCoordinator
    func makeTabBarCoordinator(router: Router)-> TabBarCoordinator
    func makeSearchCoordinator(router: Router)-> SearchCoordinator
    func makeSettingsCoordinator(router: Router)-> SettingsCoordinator
    func makeRegisterCoordinator(router: Router)-> RegisterCoordinator
    func makeLoginCoordinator(router: Router)-> LoginCoordinator
    func makeMainChatsCoordinator(router: Router)-> MainChatsCoordinator
}

final class CoordinatorFactory: CoordinatorFactoryProtocol {
    
    var moduleFactory: ModuleFactoryProtocol
    
    init(moduleFactory: ModuleFactoryProtocol) {
        self.moduleFactory = moduleFactory
    }
    
func makeAppCoordinator(router: Router) -> AppCoordinator {
        return AppCoordinator(router: router, coordinatorFactory: self)
    }
    
    func makeTabBarCoordinator(router: Router) -> TabBarCoordinator {
        return TabBarCoordinator(router: router, coordinatorFactory: self)
    }
    
    func makeSearchCoordinator(router: Router) -> SearchCoordinator {
        return SearchCoordinator(router: router, moduleFactory: moduleFactory)
    }
    
    func makeSettingsCoordinator(router: Router) -> SettingsCoordinator {
        return SettingsCoordinator(router: router, moduleFactory: moduleFactory)
    }
    
    func makeRegisterCoordinator(router: Router) -> RegisterCoordinator {
        return RegisterCoordinator(router: router, moduleFactory: moduleFactory)
    }
    
    func makeLoginCoordinator(router: Router) -> LoginCoordinator {
        return LoginCoordinator(router: router, moduleFactory: moduleFactory)
    }
    
    func makeMainChatsCoordinator(router: Router) -> MainChatsCoordinator {
        return MainChatsCoordinator(router: router, moduleFactory: moduleFactory)
    }
    
    
}
