//
//  ContentView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: Color.blue, bottomColor: Color.white)
            
            VStack {
                CityTextView(city: "Porto Alegre")
                
                MainTemperatureView(icon: "cloud.sun.fill", temperature: 32)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
