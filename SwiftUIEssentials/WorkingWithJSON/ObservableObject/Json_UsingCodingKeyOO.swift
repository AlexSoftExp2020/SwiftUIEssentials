//
//  Json_UsingCodingKeyOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import Foundation

var jsonVegetableData = """
{
"01_vegetable_name": "Beans",
"02_vegetable_color": "Yellow",
"quantity": 10
}
"""

@Observable
class Json_UsingCodingKeyOO {
    var vegetable = Json_Vegetable()
    var jsonError: Error?
    
    func fetch() {
        let decoder = JSONDecoder()
        
        let jsonData = jsonVegetableData.data(using: .utf8)!
        
        do {
            vegetable = try decoder.decode(Json_Vegetable.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}
