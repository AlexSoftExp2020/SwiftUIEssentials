//
//  Json_User.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

struct Json_User: Codable {
    var name = ""
    var age = 0
    var married = false
    var pets: [String] = []
    var email: String?
}
