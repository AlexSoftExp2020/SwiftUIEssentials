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
