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
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 5) {
                ForEach(weatherPreview!.list, id: \.self.weather[0].id) { hour in
                    MiniWeatherView(hourOfDay: formatDtIntoDayHour(hour.dt), icon: "cloud.fill", temperature: Int(hour.main.temp))
                }
            }
        }
    }
}
//
//struct NextDaysRowView_Previews: PreviewProvider {
//    static var previews: some View {
////        NextDaysRowView()
//    }
//}
