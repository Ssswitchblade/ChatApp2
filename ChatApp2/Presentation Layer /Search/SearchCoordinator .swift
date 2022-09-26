//
//  SearchCoordinator .swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation

final class SearchCoordinator: BaseCoordinator {
    
    var router: Router
    var moduleFactory: ModuleFactoryProtocol
    
    init(router: Router, moduleFactory: ModuleFactoryProtocol) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
}
