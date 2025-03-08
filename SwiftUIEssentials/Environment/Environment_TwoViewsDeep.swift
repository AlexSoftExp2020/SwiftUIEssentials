//
//  Environment_TwoViewsDeep.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct Environment_TwoViewsDeep: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to View 2") {
                DeveloperIntroView()
            }
            .navigationTitle("Developer")
        }
        .environment(DeveloperOO())
        .font(.title)
    }
}

#Preview {
    Environment_TwoViewsDeep()
}
