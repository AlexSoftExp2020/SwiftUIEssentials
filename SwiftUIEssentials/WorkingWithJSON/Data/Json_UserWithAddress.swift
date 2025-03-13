//
//  Json_UserWithAddress.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

struct Json_UserWithAddress: Codable {
    var name = ""
    var address = Address()
    
    struct Address: Codable {
        var street = ""
        var city = ""
        var state = ""
        var zipcode = ""
    }
}
