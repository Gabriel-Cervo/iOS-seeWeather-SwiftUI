//
//  DataModel.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 19/01/21.
//

import Foundation

class Api {
    func getWeather(_ apiKey: String) -> Void {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=-30.1084983&lon=-51.3175712&units=metric&appid=\(apiKey)") else {
            print("Error on constructing the string into a url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if error != nil {
                print("Error on fetching data: \n\(error!)")
            }
            
            let weather = try! JSONDecoder().decode(WeatherModel.self, from: data!)
            print(weather)
        }
        .resume()
    }
}
