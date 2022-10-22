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
    func makeLoginCoordinator(router: Router)-> LoginCoordinator
    func makeMainChatsCoordinator(router: Router)-> MainChatsCoordinator
}

final class CoordinatorFactory: CoordinatorFactoryProtocol {
    
    var moduleFactory: ModuleFactory
    
    init(moduleFactory: ModuleFactory) {
        self.moduleFactory = moduleFactory
    }
    
func makeAppCoordinator(router: Router) -> AppCoordinator {
    return AppCoordinator(router: router, coordinatorFactory: self, authService: moduleFactory.container.authService)
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
    
    func makeLoginCoordinator(router: Router) -> LoginCoordinator {
        return LoginCoordinator(router: router, moduleFactory: moduleFactory)
    }
    
    func makeMainChatsCoordinator(router: Router) -> MainChatsCoordinator {
        return MainChatsCoordinator(router: router, moduleFactory: moduleFactory)
    }
    
    
}
