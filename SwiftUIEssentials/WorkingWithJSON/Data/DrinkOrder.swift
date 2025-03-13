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
    
    init() {}
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Keys.self)
        
        // Values that are always present
        self.drink = try container.decode(String.self, forKey: .drink)
        self.milk = try container.decode(String?.self, forKey: .milk)
        
        // Values that are sometimes present
        self.sugarCubes = try container.decodeIfPresent(Int.self, forKey: .sugarCubes) ?? 0
    }
}
