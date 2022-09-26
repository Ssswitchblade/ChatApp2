//
//  MainChatsCoordinator .swift
//  ChatApp2
//
//  Created by Admin on 24.09.2022.
//

import Foundation
import UIKit

final class MainChatsCoordinator: BaseCoordinator {
    
    var router: Router
    var moduleFactory: ModuleFactoryProtocol
    
    init(router: Router, moduleFactory: ModuleFactoryProtocol) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
}
