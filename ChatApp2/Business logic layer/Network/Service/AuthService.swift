//
//  AuthService.swift
//  ChatApp2
//
//  Created by Admin on 18.10.2022.
//

import Foundation

class AuthService {
    
    var userContainer: UserContainer
    var authAPIClient: AuthAPIClient
    
    var isLogin: Bool {
        userContainer.userEmail != nil
    }
    
    init( authAPIClient: AuthAPIClient, userContainer: UserContainer) {
        self.userContainer = userContainer
        self.authAPIClient = authAPIClient
    }
    
    
}
