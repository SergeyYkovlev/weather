//
//  CityPresenter.swift
//  weather
//
//  Created by Сергей Яковлев on 28.02.2022.
//

import Foundation
import UIKit

final class CityPresenter {
    var vityData = CityData()
    
    weak var view: CityViewController?
    weak var output: CityModuleOutput?
    
    var state: CityState
    init(state: CityState) {
        self.state = state
    }
}

extension CityPresenter: CityViewOutput {
    
}
