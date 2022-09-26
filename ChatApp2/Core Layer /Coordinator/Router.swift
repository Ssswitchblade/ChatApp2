//
//  Router.swift
//  ChatApp2
//
//  Created by Admin on 24.09.2022.
//

import UIKit

protocol Routeble {
    func present(_ viewController: UIViewController, animated: Bool)

    func push(_ viewController: UIViewController, animated: Bool)

    func pop(animated: Bool)

    func dismiss(animated: Bool)

    func setRoot(_ viewController: UIViewController, animated: Bool)
    func setRoot(_ viewController: UIViewController, animated: Bool, hideBar: Bool)

    func popToRoot(animated: Bool)
}

class Router: Routeble {
    
    private weak var rootNavController: UINavigationController?
    
    init(rootNavController: UINavigationController) {
        self.rootNavController = rootNavController
    }
    
    func present(_ viewController: UIViewController, animated: Bool) {
        rootNavController?.present(viewController, animated: true)
    }
    
    func push(_ viewController: UIViewController, animated: Bool) {
        rootNavController?.pushViewController(viewController, animated: true)
    }
    
    func pop(animated: Bool) {
        rootNavController?.popViewController(animated: true)
    }
    
    func dismiss(animated: Bool) {
        rootNavController?.dismiss(animated: true)
    }
    
    func setRoot(_ viewController: UIViewController, animated: Bool) {
        setRoot(viewController, animated: animated)
    }
    
    func setRoot(_ viewController: UIViewController, animated: Bool, hideBar: Bool) {
        rootNavController?.setViewControllers([viewController], animated: animated)
        rootNavController?.isNavigationBarHidden = hideBar
    }
    
    func popToRoot(animated: Bool) {
        rootNavController?.popToRootViewController(animated: animated)
    }
    
    
}
