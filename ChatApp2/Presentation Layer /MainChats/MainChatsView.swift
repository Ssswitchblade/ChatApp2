//
//  MainChatsView.swift
//  ChatApp2
//
//  Created by Admin on 24.09.2022.
//

import Foundation
import UIKit

class MainChatsView: UIView {
    
    var viewModel: MainChatsViewModel
    
    init(viewModel: MainChatsViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

