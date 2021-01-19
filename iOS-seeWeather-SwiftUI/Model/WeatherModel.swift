//
//  WeatherModel.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 19/01/21.
//

import Foundation

struct WeatherModel: Codable {
    let list: [ListModel]
}

struct ListModel: Codable {
    let dt: Int
    let main: MainModel
    let weather: [WeatherSubInfoModel]
}

struct MainModel: Codable {
    let temp: Double
}

struct WeatherSubInfoModel: Codable {
    let id: Int
    let main: String
}
