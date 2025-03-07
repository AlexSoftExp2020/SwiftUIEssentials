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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Environment_Intro()
}
