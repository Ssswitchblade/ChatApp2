//
//  LoginView.swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    var viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
