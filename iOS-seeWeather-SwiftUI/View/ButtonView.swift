//
//  ButtonView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 18/01/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("tapped")
        } label: {
            Text("Dark mode")
                .frame(width: 180, height: 50)
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(Color.black)
                .background(Color.white)
                .cornerRadius(10)
                
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
