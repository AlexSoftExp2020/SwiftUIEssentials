//
//  Json_DecodingStrategyOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

var jsonFruitData = """
{
"fruit_name": "Apple",
"fruit_color": "Green"
}
"""

@Observable
class Json_DecodingStrategyOO {
    var fruitInfo = Json_Fruit()
    var jsonError: Error?
    
    func fetch() {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let jsonData = jsonFruitData.data(using: .utf8)!
        
        do {
            fruitInfo = try decoder.decode(Json_Fruit.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}
