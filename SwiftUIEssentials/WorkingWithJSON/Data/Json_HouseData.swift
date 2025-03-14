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
    
    init() { }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        owner = try container.decode(String.self, forKey: .owner)
        
        // Get the address
        let address = try container.nestedContainer(keyedBy: AddressKeys.self, forKey: .address)
        
        street = try address.decode(String.self, forKey: .street)
        city = try address.decode(String.self, forKey: .city)
    }
}
