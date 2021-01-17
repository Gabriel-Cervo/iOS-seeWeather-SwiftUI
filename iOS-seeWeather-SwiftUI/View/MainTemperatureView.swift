//
//  MainTemperatureView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct MainTemperatureView: View {
    let icon: String
    let temperature: Int
    
    var body: some View {
        VStack {
            /**
             Rendering mode em .original mantem a cor
             
             Aspect ratio .fit faz o icone se ajustar para caber no frame
             */
            
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct MainTemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        MainTemperatureView(icon: "cloud.sun.fill", temperature: 32)
    }
}
