//
//  Environment_NotAvailableInInit.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct Environment_NotAvailableInInit: View {
    @Environment(UserOO.self) var user
    @State private var highlight = false
//    init() {
//        // Environment objects are not accessible in the init.
//        if user.userName == "scott.smith" {
//            highlight = true
//        }
//    }
    
    var body: some View {
        Text(user.userName)
            .padding()
            .background(highlight ? Color.yellow : Color.clear)
            .font(.title)
    }
}

#Preview {
    Environment_NotAvailableInInit()
        .environment(UserOO())
}
