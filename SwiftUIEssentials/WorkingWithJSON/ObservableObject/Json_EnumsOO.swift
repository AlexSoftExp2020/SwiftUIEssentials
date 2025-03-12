//
//  Json_EnumsOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

@Observable
class Json_EnumsOO {
    var carData = Json_Car()
    var jsonError: Error?
    
    func fetch() {
        let jsonData = jsonCarData.data(using: .utf8)!
        do {
            carData = try JSONDecoder().decode(Json_Car.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}

var jsonCarData = """
{
"name": "Peugeot",
"type": "foreign"
}
"""
