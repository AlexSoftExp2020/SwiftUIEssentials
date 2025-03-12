//
//  CarType.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

enum CarType: String, Codable, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case unspecified
    case foreign
    case domestic
}

struct Json_Car: Codable {
    var name: String = ""
    var type: CarType = .unspecified
}
