//
//  DeveloperIntroView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct DeveloperIntroView: View {
    var body: some View {
        NavigationLink("Go to View 3") {
            DeveloperView()
        }
        .navigationTitle("View 2")
    }
}

#Preview {
    DeveloperIntroView()
}
