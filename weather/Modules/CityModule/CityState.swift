//
//  CityState.swift
//  weather
//
//  Created by Сергей Яковлев on 28.02.2022.
//

import Foundation


final class CityState {
    var cityData = CityData()
   
}

struct City: Codable {
    var name: String
    var lat: Int
    var lon: Int
}

struct CityData {
    var city: [City] = []
    var cityName: [String] = ["Omsk", "Tymen", "Kazan", "Novosibirsk"]
    var cityLon:[String] = ["73.3674517", "65.5344099", "49.1114975", "82.9211489"]
    var cityLat:[String] = ["54.9848566", "57.1529744", "55.7943584", "55.028191"]
}
