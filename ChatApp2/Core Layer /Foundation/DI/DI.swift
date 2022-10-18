//
//  DI.swift
//  ChatApp2
//
//  Created by Admin on 18.10.2022.
//

import Foundation
import FirebaseDatabase

final class DIContainer {
    
    let decoder: JSONDecoder
    let requestBuilder: RequestBuilder
    let session: DatabaseReference
    
    let userContainer: UserContainer
    let dataStore: UserDefaults
    let apiClient: APIClient
    lazy var userService = UserService(userAPIClient: apiClient, userContainer: userContainer)
    lazy var authService = AuthService(authAPIClient: apiClient, userContainer: userContainer)
    
    init() {
        requestBuilder = RequestBuilder()
        session = Database.database().reference()
        decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        apiClient = APIClient(session: session, decoder: decoder, requestBuilder: requestBuilder)
        
        dataStore = UserDefaults.standard
        userContainer = UserContainer(container: dataStore)
    }
}
