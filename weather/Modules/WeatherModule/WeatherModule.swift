//
//  WeatherModule.swift
//  weather
//
//  Created by Сергей Яковлев on 22.02.2022.
//
import Foundation

protocol WeatherModuleInput: AnyObject {

}

protocol WeatherModuleOutput: AnyObject {
    
}

final class WeatherModule {
    var output: WeatherModuleOutput? {
        get {
            return presenter.output
        }
        set {
            presenter.output = newValue
        }
    }
    let viewController: WeatherViewController
    private let presenter: WeatherPresenter

    init(state: WeatherState = .init()) {
        let presenter = WeatherPresenter(state: state)
        let viewController = WeatherViewController(output: presenter)
        presenter.view = viewController
        self.viewController = viewController
        self.presenter = presenter
    }
    
}
