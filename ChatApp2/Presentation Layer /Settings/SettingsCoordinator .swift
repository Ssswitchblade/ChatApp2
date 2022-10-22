//
//  SettingsCoordinator .swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation

final class SettingsCoordinator: BaseCoordinator {
    
    var router: Router
    var moduleFactory: ModuleFactoryProtocol
    
    init(router: Router, moduleFactory: ModuleFactoryProtocol) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
    
    override func start() {
        settingsStart()
    }
    
    private func settingsStart() {
        let settingsVC = moduleFactory.makeSettingsViewController()
        router.push(settingsVC, animated: true)
    }
}
