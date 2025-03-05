//
//  AppStorage_Persistence.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 06.03.2025.
//

import SwiftUI

struct AppStorage_Persistence: View {
    @AppStorage("darkBackground") var darkBakcground = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("AppStorage",
                       subtitle: "Persistence",
                       desc: "Data you store using @AppStorage will persist even after the app closes.",
                       back: .orange,
                       textColor: .black)
            Toggle(isOn: $darkBakcground) {
                Text("Use Dark Background?")
            }
            .padding()
        }
        .font(.title)
        .preferredColorScheme(darkBakcground ? .dark : .light)
    }
}

#Preview {
    AppStorage_Persistence()
}
