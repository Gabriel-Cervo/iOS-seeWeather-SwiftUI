//
//  MiniWeatherView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct MiniWeatherView: View {
    let dayOfWeek: String
    let icon: String
    let temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding()
            
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct MiniWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        MiniWeatherView(dayOfWeek: "QUA", icon: "cloud.sun.fill", temperature: 28)
    }
}
