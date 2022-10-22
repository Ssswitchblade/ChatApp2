//
//  AppCoordinator .swift
//  ChatApp2
//
//  Created by Admin on 24.09.2022.
//

import Foundation


final class AppCoordinator: BaseCoordinator {
    
    var router: Router
    var coordinatorFactory: CoordinatorFactory
    var isLogin: Bool = false
    var authService: AuthService
    
    init(router: Router, coordinatorFactory: CoordinatorFactory, authService: AuthService) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.authService = authService
    }
    
    override func start() {
        isLogin = authService.isLogin
        if !isLogin {
            runLoginVC()
        } else {
            runTabBar()
        }
    }
    
    private func runLoginVC() {
        let loginCoordinator = coordinatorFactory.makeLoginCoordinator(router: router)
        retain(loginCoordinator)
        loginCoordinator.start()
    }
       
    private func runTabBar() {
        
        
        let loginCoordinator = coordinatorFactory.makeLoginCoordinator(router: router)
        
        let tabBarCoordinator = coordinatorFactory.makeTabBarCoordinator(router: router)
        retain(tabBarCoordinator)
        tabBarCoordinator.start()
        
    }
}
