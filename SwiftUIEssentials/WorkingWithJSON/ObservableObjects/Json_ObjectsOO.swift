//
//  Json_ObjectsOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

import Foundation

@Observable
class Json_ObjectsOO {
    var user = Json_UserWithAddress()
    var jsonError: Error?
    
    func fetch() {
        let jsonData = jsonUserData.data(using: .utf8)!
        
        do {
            user = try JSONDecoder().decode(Json_UserWithAddress.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}

var jsonUserData = """
{
"name": "Max Acavard",
"address": {
"street": "73 School St",
"city": "Franconia",
"state": "NH",
"zipcode": "03580"
}
}
"""
