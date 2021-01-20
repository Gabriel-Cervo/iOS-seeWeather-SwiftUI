//
//  ContentView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct ContentView: View {
    let apiKey = getPlistItem(withName: "Keys")
    
    @State private var weatherPreview: WeatherModel? = nil
    @State private var isDarkMode = false
    
    var body: some View {
        ZStack {
            BackgroundView(isDarkMode: $isDarkMode, topColor: Color.blue, bottomColor: Color.white)
            
            VStack {
                CityTextView(city: weatherPreview == nil ? "Carregando" : "\(weatherPreview!.city.name), \(weatherPreview!.city.country)")
                
                MainTemperatureView(icon: isDarkMode ? "moon.stars.fill" : "cloud.sun.fill", temperature: weatherPreview == nil ? 0 : Int(weatherPreview!.list.first!.main.temp))
                    .padding(.bottom, 60)
                
                if weatherPreview != nil {
                    NextDaysRowView(weatherPreview: $weatherPreview)  
                }
                
                Spacer()
                
                ButtonView(isDarkMode: $isDarkMode)
                
                Spacer()
            }
        }.onAppear {
            Api().getWeather(apiKey: apiKey![0]) { weatherPreview in
                self.weatherPreview = weatherPreview
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
