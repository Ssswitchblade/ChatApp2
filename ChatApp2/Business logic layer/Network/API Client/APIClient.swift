//
//  UserService.swift
//  ChatApp2
//
//  Created by Admin on 18.10.2022.
//

import Foundation
import FirebaseDatabase

class APIClient {
    
    var session: DatabaseReference
    var decoder: JSONDecoder
    var requestBuilder: RequestBuilder
    
    init(session: DatabaseReference, decoder: JSONDecoder, requestBuilder: RequestBuilder) {
        self.session = session
        self.decoder = decoder
        self.requestBuilder = requestBuilder
    }
    
}
