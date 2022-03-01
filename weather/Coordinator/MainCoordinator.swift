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
    let weatherModule = WeatherModule()
    let cityModule = CityModule()
    
    init(window: UIWindow) {
        self.window = window
        let rootViewController = UINavigationController()
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        super.init(rootViewController: rootViewController)
    }
    
    override func start() {
        
        weatherModule.output = self
        cityModule.output = self
//        viewController.delegate = self
        rootViewController.pushViewController(weatherModule.viewController, animated: true)
    }
    
}

extension MainCoordinator: CityModuleOutput {
    func CityModuleWeatherViewController(lon: String, lat: String) {
        weatherModule.input.state.str = lon
        weatherModule.input.state.stro = lat
        weatherModule.input.update()
        rootViewController.popViewController(animated: true)
    }
}

extension MainCoordinator: WeatherModuleOutput {
    func weatherModuleCityOpenViewController() {
        rootViewController.pushViewController(cityModule.viewController, animated: true)
    }
}

   


