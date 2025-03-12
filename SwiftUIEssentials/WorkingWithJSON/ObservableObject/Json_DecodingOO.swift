//
//  Json_DecodingOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

import Foundation

@Observable
class Json_DecodingOO {
    var user = Json_User()
    var jsonError: Error?
    
    func fetch() {
        let jsonData = jsonString.data(using: .utf8)!
        let decoder = JSONDecoder()
        
        do {
            user = try decoder.decode(Json_User.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}

var jsonString = """
{
"name": "Max",
"age": 28,
"married": true,
"pets": ["Rover", "Milo"],
"email": null
}
"""
