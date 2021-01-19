//
//  ContentView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct ContentView: View {
    let apiKey = getPlistItem(withName: "Keys")
    
    @State private var isDarkMode = false
    
    var body: some View {
        ZStack {
            BackgroundView(isDarkMode: $isDarkMode, topColor: Color.blue, bottomColor: Color.white)
            
            VStack {
                CityTextView(city: "Porto Alegre, RS")
                
                MainTemperatureView(icon: isDarkMode ? "moon.stars.fill" : "cloud.sun.fill", temperature: 27)
                    .padding(.bottom, 60)
                
                NextDaysRowView()
                
                Spacer()
                
                ButtonView(isDarkMode: $isDarkMode)
                
                Spacer()
            }
        }.onAppear {
            Api().getWeather(apiKey![0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
