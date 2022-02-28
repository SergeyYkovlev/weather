//
//  CityModule.swift
//  weather
//
//  Created by Сергей Яковлев on 28.02.2022.
//
import Foundation

protocol CityModuleInput: AnyObject {

}

protocol CityModuleOutput: AnyObject {
    
}

final class CityModule {
    var output: CityModuleOutput? {
        get {
            return presenter.output
        }
        set {
            presenter.output = newValue
        }
    }
    
    let viewController: CityViewController
    private let presenter: CityPresenter

    init(state: CityState = .init()) {
        let presenter = CityPresenter(state: state)
        let viewController = CityViewController(output: presenter)
        presenter.view = viewController
        self.viewController = viewController
        self.presenter = presenter
    }
    
}
