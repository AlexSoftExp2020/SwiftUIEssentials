//
//  DrinkOrder.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import Foundation

struct DrinkOrder: Codable {
    var drink = ""
    var milk: String?
    var sugarCubes: Int = 0
    
    enum Keys: CodingKey {
        case drink
        case milk
        case sugarCubes
    }
}
