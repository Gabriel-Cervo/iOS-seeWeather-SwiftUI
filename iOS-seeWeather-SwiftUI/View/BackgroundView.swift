//
//  BackgroundView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var isDarkMode: Bool
    
    let topColor: Color
    let bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: isDarkMode ?
            Gradient(colors: [topColor, bottomColor])
            :
            Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
//        BackgroundView(isDarkMode: Binding(true)!, topColor: Color.blue,  bottomColor: Color.white)
    }
}
