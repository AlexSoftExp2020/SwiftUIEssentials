//
//  Json_DecodeIfPresentOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import Foundation

var jsonDrinkOrder1 = """
{
    "drink": "Latte",
    "milk": "Whole",
    "sugarCubes": 2
}
"""

var jsonDrinkOrder2 = """
{
    "drink": "Latte",
    "milk": null
}
"""

@Observable
class Json_DecodeIfPresentOO {
    var drinkOrder: DrinkOrder = DrinkOrder()
    var jsonError: Error?
    
    func fetch() {
        let jsonData = jsonDrinkOrder2.data(using: .utf8)!
        
        do {
            drinkOrder = try JSONDecoder().decode(DrinkOrder.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}
