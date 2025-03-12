//
//  Json_EnumsOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

@Observable
class Json_EnumsOO {
    var carData = Json_Car()
    var jsonError: Error?
    
    func fetch() {
        //MARK: TODO
    }
}

var jsonCarData = """
{
"name": "Peugeot",
"type": "foreign"
}
"""
