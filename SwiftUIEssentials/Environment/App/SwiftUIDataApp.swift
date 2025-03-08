//
//  SwiftUIDataApp.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

// @main
struct SwiftUIDataApp: App {
    var body: some Scene {
        WindowGroup {
            Environment_Global()
        }
        .environment(UserModel())
    }
}


