//
//  TabBarCoordinator.swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation
import UIKit

final class TabBarCoordinator: BaseCoordinator {
    
    var router: Router
    var coordinatorFactory: CoordinatorFactoryProtocol
    var tabBarController = TabBarController()
    var isLogin = false
    
    init(router: Router, coordinatorFactory: CoordinatorFactoryProtocol) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        startTabBar()
    }
    
    private func startTabBar() {
        
        if !isLogin {
            presentLoginScreen()
        }
        
        let mainChatsNC = MainNavigationController()
        mainChatsNC.tabBarItem = UITabBarItem(title: "Chats", image: UIImage(systemName: "bubble.right"), tag: 0)
        let mainChatsCoordinator = coordinatorFactory.makeMainChatsCoordinator(router: Router(rootNavController: mainChatsNC))
        
        let settingsNC = MainNavigationController()
        settingsNC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gearshape.2"), tag: 1)
        let settingsCoordinator = coordinatorFactory.makeSettingsCoordinator(router: Router(rootNavController: settingsNC))
        
        tabBarController.viewControllers = [mainChatsNC, settingsNC]
        
        router.setRoot(tabBarController, animated: true, hideBar: true)
        
        retain(mainChatsCoordinator)
        retain(settingsCoordinator)
        
        mainChatsCoordinator.start()
        settingsCoordinator.start()
        
        
        
    }
    
    func presentLoginScreen() {
       let loginNC = MainNavigationController()
       let loginCoordinator = coordinatorFactory.makeLoginCoordinator(router: Router(rootNavController: loginNC))
       retain(loginCoordinator)
       loginCoordinator.start()

   }
    
}
