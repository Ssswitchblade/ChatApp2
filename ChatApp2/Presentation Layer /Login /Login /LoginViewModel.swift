//
//  LoginViewModel.swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation
import UIKit
import Combine

final class LoginViewModel {
    
    var subscription: AnyCancellable?
    @Published var email: String = ""
    @Published var password: String = ""
    private(set) lazy var inputValid = Publishers.CombineLatest($email, $password)
        .map({ $0.count > 6 && $1.count >= 8})
        .eraseToAnyPublisher()
    
    var authService: AuthService?
    var registerScreen: (() -> Void)?
    
    init(authService: AuthService?) {
        self.authService = authService
    }
    
    func checkLoginStatus() -> Bool {
        guard let unwrpAuthService = authService else { return false }
        return unwrpAuthService.isLogin
    }
    
    func registerBtnDidTpd() {
        self.registerScreen!()
    }
    
    func logInBtnTpd() {
        
    }
}
