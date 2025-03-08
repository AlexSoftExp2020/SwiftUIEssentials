//
//  Environment_Global.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct Environment_Global: View {
    @Environment(UserModel.self) var user
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username: \(user.username)")
            LabeledContent("Online") {
                Image(systemName: "circle.fill")
                    .foregroundStyle(user.showAsOnLine ? .green : .red)
            }
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    Environment_Global()
        .environment(UserModel())
}
