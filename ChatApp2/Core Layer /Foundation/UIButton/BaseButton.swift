//
//  BaseButton.swift
//  ChatApp2
//
//  Created by Admin on 22.10.2022.
//

import UIKit

final class BaseButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        setTitleColor( UIColor.white, for: .normal)
        layer.cornerRadius = 12
        layer.masksToBounds = true
        titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        translatesAutoresizingMaskIntoConstraints = false
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var isIS = true 
    
    override var isEnabled: Bool {
        willSet {
            backgroundColor = .systemBlue.withAlphaComponent(newValue ? 1 : 0.3)
        }
    }
    
}
