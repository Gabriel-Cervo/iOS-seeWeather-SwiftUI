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
            ForEach((1...5), id: \.self) {
                let day = weatherPreview!.list[$0]
                
                MiniWeatherView(dayOfWeek: formatDate(day.dt), icon: "cloud.fill", temperature: Int(day.main.temp))
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
