//
//  formatDtIntoDay.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 20/01/21.
//

import Foundation

func formatDtIntoDayHour(_ dt: Int) -> String {
    let timeInterval = Double(dt)
    let dateInNS = Date(timeIntervalSince1970: timeInterval)
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh"
    
    let dayHour = dateFormatter.string(from: dateInNS)
    
    return dayHour
}

/** Codigo para formatar string, caso seja necessario futuramente...

 let indexEndOfText = weekDay.index(weekDay.startIndex, offsetBy: 0)
 let weekdayFormatted = String(weekDay[..<indexEndOfText]).uppercased()
 
 */
