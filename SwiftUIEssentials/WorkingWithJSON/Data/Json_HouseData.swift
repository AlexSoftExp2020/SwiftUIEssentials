//
//  Json_HouseData.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 14.03.2025.
//

import Foundation

struct Json_HouseData: Decodable {
    var owner = ""
    var street = ""
    var city = ""
    
    enum CodingKeys: String, CodingKey {
        case owner
        case address
    }
    
    enum AddressKeys: String, CodingKey {
        case street
        case city
    }
}
