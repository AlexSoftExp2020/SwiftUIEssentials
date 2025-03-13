//
//  Json_Vegetable.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import Foundation

struct Json_Vegetable: Codable {
    var name = ""
    var color = ""
    var quantity = 0
    
    enum CodingKeys: String, CodingKey {
        case name = "01_vegetable_name"
        case color = "02_vegetable_color"
        case quantity
    }
}
