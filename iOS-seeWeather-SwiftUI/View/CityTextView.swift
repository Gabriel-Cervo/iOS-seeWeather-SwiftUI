//
//  CityTextView.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 17/01/21.
//

import SwiftUI

struct CityTextView: View {
    let city: String
    
    var body: some View {
        Text(city)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
    }
}

struct CityTextView_Previews: PreviewProvider {
    static var previews: some View {
        CityTextView(city: "Porto Alegre")
    }
}
