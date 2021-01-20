//
//  NextDaysRowView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 18/01/21.
//

import SwiftUI

struct NextDaysRowView: View {
    @Binding var weatherPreview: WeatherModel?
    
    var body: some View {
        HStack() {
            if weatherPreview != nil {
                List(weatherPreview!.list, id: \.self.weather.id) { weather in
                    MiniWeatherView(dayOfWeek: "QUA", icon: "sun.max.fill", temperature: 32)
                }
                MiniWeatherView(dayOfWeek: "QUI", icon: "sun.max.fill", temperature: 31)
                MiniWeatherView(dayOfWeek: "SEX", icon: "cloud.fill", temperature: 28)
                MiniWeatherView(dayOfWeek: "SAB", icon: "cloud.rain.fill", temperature: 26)
                MiniWeatherView(dayOfWeek: "DOM", icon: "cloud.rain.fill", temperature: 24)
            }
        }
    }
}

struct NextDaysRowView_Previews: PreviewProvider {
    static var previews: some View {
        NextDaysRowView()
    }
}
