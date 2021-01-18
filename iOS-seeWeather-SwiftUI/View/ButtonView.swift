//
//  ButtonView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 18/01/21.
//

import SwiftUI

struct ButtonView: View {
    @Binding var isDarkMode: Bool
    
    var body: some View {
        Button {
            isDarkMode.toggle()
        } label: {
            Text(isDarkMode ? "Light Mode" : "Dark mode")
                .frame(width: 180, height: 50)
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(isDarkMode ? Color.white : Color.black)
                .background(isDarkMode ? Color.black : Color.white)
                .cornerRadius(10)
                
        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
