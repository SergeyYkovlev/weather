//
//  CityPresenter.swift
//  weather
//
//  Created by Сергей Яковлев on 28.02.2022.
//

import Foundation
import UIKit

final class CityPresenter {
    
    weak var view: CityViewController?
    weak var output: CityModuleOutput?
    
    var state: CityState
    init(state: CityState) {
        self.state = state
    }
}

extension CityPresenter: CityViewOutput {
    
    func openWeatherViewController(index: Int) {
        state.cityData.cityLat[index]
        state.cityData.cityLon[index]
        output?.CityModuleWeatherViewController(lon: state.cityData.cityLat[index], lat: state.cityData.cityLon[index]  )
    }
    
}
