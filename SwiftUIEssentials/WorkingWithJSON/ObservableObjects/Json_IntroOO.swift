//
//  Json_IntroOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

import SwiftUI

@Observable
class Json_IntroOO {
    var data = ""
    
    func fetch() {
        data = userJsonData
    }
}

var userJsonData = """
{
"name": "Max",
"age": 28,
"married": true,
"pets": ["Rover", "Milo"],
"email": null
}
"""

//MARK: TODO
/*
 String
 Int
 Bool
 Array
 optional
 */
