//
//  WeatherModel.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 19/01/21.
//

import Foundation

struct WeatherModel: Codable {
    var list: [ListModel]
    var city: CityModel
}

struct ListModel: Codable, Hashable {
    static func == (lhs: ListModel, rhs: ListModel) -> Bool {
        return lhs.weather[0].id == rhs.weather[0].id
    }
    
    var dt: Int
    var main: MainModel
    var weather: [WeatherSubInfoModel]
}

struct MainModel: Codable, Hashable {
    var temp: Double
}

struct WeatherSubInfoModel: Codable, Hashable {
    var id: Int
    var main: String
    var icon: String
}

struct CityModel: Codable {
    var name: String
    var country: String
}
