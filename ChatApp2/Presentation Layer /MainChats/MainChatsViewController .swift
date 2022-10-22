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
    private lazy var mainChatsView = self.view as? MainChatsView
    
    init(viewModel: MainChatsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    override func loadView() {
        super.loadView()
        let view = MainChatsView(viewModel: viewModel)
        self.view = view
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
