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
        VStack(spacing: 20) {
            HeaderView("",
                       subtitle: "Update AppStorage",
                       desc: "To update AppStorage, just assign a new value to the variable",
                       back: .orange,
                       textColor: .black)
            
            Text("Enter a bew user name:")
            TextField("new user name", text: $newUsername)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Update") {
                username = newUsername
            }
        }
        .font(.title)
        .navigationTitle("Update App Storage")
    }
}

#Preview {
    AppStorage_Edit()
}
