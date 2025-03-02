//
//  Binding_TwoWay.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 02.03.2025.
//

import SwiftUI

struct Binding_TwoWay: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EditNameSubview: View {
    @Binding var name: String
    
    var body: some View {
        GroupBox("Subview") {
            TextField("name", text: $name)
                .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    Binding_TwoWay()
}
