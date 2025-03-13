//
//  Json_TodoList.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import Foundation

struct Json_TodoList: Codable {
    var tasks: [Json_Task] = []
    
    struct Json_Task: Codable, Identifiable {
        var id = 0
        var description = ""
        var dueDate = Date()
    }
}
