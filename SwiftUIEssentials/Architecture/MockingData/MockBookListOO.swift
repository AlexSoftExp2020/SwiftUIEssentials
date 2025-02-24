//
//  MockBookListOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 24.02.2025.
//

class MockBookListOO: BookListOO {
    override func fetch() {
        data = [
            BooksDO(name: "SwiftUI Views Mastery"),
            BooksDO(name: "SwiftUI Animations Mastery"),
            BooksDO(name: "Combine Mastery in SwiftUI"),
            BooksDO(name: "SwiftData Mastery in SwiftUI"),
            BooksDO(name: "Core Data Mastery in SwiftUI"),
            BooksDO(name: "SwiftUI Essentials")
        ]
    }
}

