//
//  WeatherPresentor.swift
//  weather
//
//  Created by Сергей Яковлев on 22.02.2022.
//

import Foundation
import UIKit


final class WeatherPresenter {
    
    
    
    weak var view: WeatherViewController?
    weak var output: WeatherModuleOutput?
    
    var state: WeatherState
    init(state: WeatherState) {
        self.state = state
    }
    
    
}

extension WeatherPresenter: WeatherViewOutput {
    func showText() {
    }
}
