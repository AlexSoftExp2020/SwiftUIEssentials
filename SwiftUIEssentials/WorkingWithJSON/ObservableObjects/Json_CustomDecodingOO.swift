//
//  Json_CustomDecodingOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 14.03.2025.
//

import SwiftUI

var jsonHouseData = """
{
    "owner": "Emin Jacobsen",
    "address": {
        "street": "123 Main St.",
        "city": "Sundsvall"
    }
}
"""

@Observable
class Json_CustomDecodingOO {
    var houseData = Json_HouseData()
    var jsonError: Error?
    
    func fetch() {
        let jsonData = jsonHouseData.data(using: .utf8)!
        
        do {
            houseData = try JSONDecoder().decode(Json_HouseData.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}
