//
//  AppStorage_Edit.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 05.03.2025.
//

import SwiftUI

struct AppStorage_Edit: View {
    @AppStorage("username") var username: String!
    @State private var newUsername = ""
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AppStorage_Edit()
}
