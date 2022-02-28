//
//  WeatherState.swift
//  weather
//
//  Created by Сергей Яковлев on 22.02.2022.
//

import Foundation
import CoreLocation

final class WeatherState {
  
    
    
}

struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

struct Main: Codable {
    var temp: Double = 0.0
    var pressure: Int = 0
    var humidity: Int = 0
}

struct Wind: Codable {
    var speed: Double = 0.0
    var deg: Double = 0.0
    }

struct WeatherData: Codable {
    var weather: [Weather] = []
    var main: Main = Main()
    var name: String = ""
    var wind: Wind = Wind()
    
    func directionWind(degrees: Double) -> String {
        
    switch degrees {
    
    case 346.0...360.0, 0.10...15.50 :
            return "северный"
        
    case 16.0...75.0 :
            return "северо-восточный"
        
    case 76.0...105.0 :
            return "восточный"
        
    case 106.0...165.0 :
            return "юго-восточный"
        
    case 166.0...195.0 :
            return "южный"
        
    case 196.0...255.0 :
            return "юго-западный"
        
    case 256.0...285.0 :
            return "западный"
        
    case 286.0...345.0 :
            return "северо-западный"
        
        default :
            return "dunno"
        }
    }
}
