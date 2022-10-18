//
//  UserService.swift
//  ChatApp2
//
//  Created by Admin on 18.10.2022.
//

import Foundation

class UserService {
    
    var userAPIClient: UserAPIClient
    var userContainer: UserContainer
    
    init(userAPIClient: UserAPIClient, userContainer: UserContainer) {
        self.userAPIClient = userAPIClient
        self.userContainer = userContainer
    }
    
}
