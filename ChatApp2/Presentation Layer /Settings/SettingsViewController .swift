//
//  SettingsViewController .swift
//  ChatApp2
//
//  Created by Admin on 25.09.2022.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    var viewModel: SettingsViewModel
    private lazy var settingsView = self.view as? SettingsView
    
    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        super.loadView()
        let view = SettingsView(viewModel: viewModel)
        self.view = view 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
