//
//  UIButton .swift
//  ChatApp2
//
//  Created by Admin on 22.10.2022.
//

import UIKit
import Combine
import Foundation

extension UIButton {
    
    var tapPublisher: EventPublisher {
        publisher(for: .touchUpInside)
    }
}

 extension BaseButton {
    
    var isValid: Bool {
        get { isEnabled && backgroundColor == .systemBlue }
        set {
            backgroundColor = newValue ? .systemBlue.withAlphaComponent(0.3) : .systemBlue
            isEnabled = newValue
        }
    }
}

