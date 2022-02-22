//
//  MainCoordinator.swift
//  weather
//
//  Created by Сергей Яковлев on 18.02.2022.
//

import Foundation
import  UIKit

class MainCoordinator: BaseCoordinator <UINavigationController> {
  
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        let rootViewController = UINavigationController()
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        super.init(rootViewController: rootViewController)
    }
    
    override func start() {
        let viewController = ViewController()
//        viewController.delegate = self
        rootViewController.pushViewController(viewController, animated: true)
    }
}
