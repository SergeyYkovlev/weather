//
//  WeatherPresentor.swift
//  weather
//
//  Created by Сергей Яковлев on 22.02.2022.
//

import Foundation
import UIKit
import CoreLocation


final class WeatherPresenter {
    
    
    var weatherData = WeatherData()
    
    weak var view: WeatherViewController?
    weak var output: WeatherModuleOutput?
    
    
    var state: WeatherState
    init(state: WeatherState) {
        self.state = state
    }
    
    
}

extension WeatherPresenter: WeatherViewOutput {
  
    
    func updateWeatherInfo(latitude: Double, longtitude: Double) {
        let session = URLSession.shared
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude.description)&lon=\(longtitude.description)&units=metric&lang=ru&appid=a7ca4a860728c8b96120b4290c53581f")
        let task = session.dataTask(with: url!) { (data, response, error) in
            guard error == nil else {
                print("DataTask error: \(error!.localizedDescription)")
                return
            }
            do{
                self.weatherData = try JSONDecoder().decode(WeatherData.self, from: data!)
                print(self.weatherData)
                DispatchQueue.main.async {
                    self.updateView()
                }
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func updateView() {
        view?.weatherData = weatherData
        
        view?.cityLabel.text = weatherData.name
        view?.infoWeatherImageView.image = UIImage(named: weatherData.weather[0].icon )
        view?.indoWeatherPrecipitationLabel.text = DataSource.weatherIDs[weatherData.weather[0].id]
        view?.infoWeatherDegreesLabel.text = (Int(weatherData.main.temp).description) + "°"
        view?.humidityLabel.text = weatherData.main.humidity.description + "%"
        view?.pressureLabel.text = weatherData.main.pressure.description + " мм рт. ст."
        view?.windLablel.text = (Int(weatherData.wind.speed).description) + " м/с," + weatherData.directionWind(degrees: weatherData.wind.deg)
    }
    
  
}




