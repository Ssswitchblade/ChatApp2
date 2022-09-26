//
//  MainChatsViewcontroller .swift
//  ChatApp2
//
//  Created by Admin on 24.09.2022.
//

import Foundation
import UIKit
import Combine

class MainChatsViewController: UIViewController {
    
    var viewModel: MainChatsViewModel
    
    init(viewModel: MainChatsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
