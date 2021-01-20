//
//  MiniWeatherView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct MiniWeatherView: View {
    let hourOfDay: String
    let icon: String
    let temperature: Int
    
    var body: some View {
        VStack {
            Text(hourOfDay)
                .font(.system(size: 15, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
                .padding()
            
            Text("\(temperature)°")
                .font(.system(size: 17, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct MiniWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        MiniWeatherView(hourOfDay: "QUA", icon: "cloud.sun.fill", temperature: 28)
    }
}
