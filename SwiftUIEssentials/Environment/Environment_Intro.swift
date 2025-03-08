//
//  Environment_Intro.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 07.03.2025.
//

import SwiftUI

struct Environment_Intro: View {
    var body: some View {
        NavigationStack {
            NavigationLink("View Developer") {
                DeveloperView()
            }
            .navigationTitle("Developer")
        }
        .environment(DeveloperOO())
        .font(.title)
    }
}

#Preview {
    Environment_Intro()
}
