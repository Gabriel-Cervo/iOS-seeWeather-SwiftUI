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

struct ListModel: Codable {
    var dt: Int
    var main: MainModel
    var weather: [WeatherSubInfoModel]
}

struct MainModel: Codable {
    var temp: Double
}

struct WeatherSubInfoModel: Codable {
    var id: Int
    var main: String
    var icon: String
}

struct CityModel: Codable {
    var name: String
    var country: String
}
