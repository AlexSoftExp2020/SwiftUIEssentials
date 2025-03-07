//
//  Environment_Intro.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 07.03.2025.
//

import SwiftUI

@Observable
class DeveloperOO {
    var name: String = "Awesome developer"
}

struct Environment_Intro: View {
    var body: some View {
        NavigationStack {
            NavigationLink("View Developer") {
                //TODO: DeveloperView()
            }
        }
    }
}

#Preview {
    Environment_Intro()
}
