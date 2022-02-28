//
//  CityState.swift
//  weather
//
//  Created by Сергей Яковлев on 28.02.2022.
//

import Foundation


final class CityState {
   
}

struct City: Codable {
    var name: String
    var lat: Int
    var lon: Int
}

struct CityData {
    var city: [City] = []
}
