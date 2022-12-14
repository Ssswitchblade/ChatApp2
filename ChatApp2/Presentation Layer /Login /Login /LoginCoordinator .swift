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
    var isLOgin: Bool 
    
    init(router: Router, moduleFactory: ModuleFactoryProtocol) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
}
