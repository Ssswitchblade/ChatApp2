//
//  UserContainer.swift
//  ChatApp2
//
//  Created by Admin on 18.10.2022.
//

import Foundation

protocol UserContainerProtocol {
    var userEmail: String? { get set}
    var userName: String? { get set}
}

class UserContainer: UserContainerProtocol {
  
    var container: UserDefaults
    
    init(container: UserDefaults) {
        self.container = container
    }
    
    var userEmail: String? {
        get {
            container.string(forKey: Keys.email.rawValue)
        }
        set {
            if let newValue = newValue {
                container.set(newValue, forKey: Keys.email.rawValue)
            } else {
                container.removeObject(forKey: Keys.email.rawValue)
            }
        }
    }
    
    var userName: String? {
        get {
            container.string(forKey: Keys.name.rawValue)
        }
        set {
            if let newValue = newValue {
                container.set(newValue, forKey: Keys.name.rawValue)
            } else {
                container.removeObject(forKey: Keys.name.rawValue)
            }
        }
    }
    
    
}

extension UserContainer {
    private enum Keys: String {
        case email
        case name
    }
}
