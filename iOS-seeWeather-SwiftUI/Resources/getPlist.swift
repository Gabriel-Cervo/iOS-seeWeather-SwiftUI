//
//  getPlist.swift
//  iOS-seeWeather-SwiftUI
//
//  Created by João Gabriel Dourado Cervo on 19/01/21.
//

import Foundation

/**
Codigo para leitura de uma Plist (array)
 */

func getPlistItem(withName name: String) -> [String]? {
    guard let path =  Bundle.main.path(forResource: name, ofType: "plist") else {
        print("[ERROR]: Cannot find a Plist with the specified path.")
        return nil
    }
    guard let xml = FileManager.default.contents(atPath: path) else {
        print("[ERROR]: Deserializing data from xml failed.")
        return nil
    }
        
    let itens = (
        try? PropertyListSerialization.propertyList(from: xml, options: .mutableContainersAndLeaves, format: nil)
    ) as? [String]
    
    return itens
}
