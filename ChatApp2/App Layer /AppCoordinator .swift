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
    
    init(router: Router, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        runTabBar()
    }
    private func runTabBar() {
        let tabBarCoordinator = coordinatorFactory.makeTabBarCoordinator(router: router)
        retain(tabBarCoordinator)
        tabBarCoordinator.start()
        
    }
}
