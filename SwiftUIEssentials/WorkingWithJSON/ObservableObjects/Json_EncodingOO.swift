//
//  Json_EncodingOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

import SwiftUI

@Observable
class Json_Encoding {
    var user = Json_User()
    var formattedJson = ""
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
    
    func save() {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        
        do {
            let jsonData = try encoder.encode(user)
            formattedJson = String(data: jsonData, encoding: .utf8)!
        } catch {
            jsonError = error
        }
    }
}
