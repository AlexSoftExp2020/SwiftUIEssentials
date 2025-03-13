//
//  Json_DatesOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import Foundation

var jsonTodoData = """
{
    "tasks": [
        {
            "id": 1,
            "description": "Buy birthday present",
            "dueDate": "2024-06-24T19:00:57Z"
        }
    ]
}
"""

@Observable
class Json_DatesOO {
    var todoList = Json_TodoList()
    var jsonError: Error?
    
    func fetch() {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let jsonData = jsonTodoData.data(using: .utf8)!
        
        do {
            todoList = try decoder.decode(Json_TodoList.self, from: jsonData)
        } catch {
            jsonError = error
        }
    }
}
