//
//  Binding_OneWay.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 02.03.2025.
//

import SwiftUI

struct NameSubview: View {
    var name: String
    
    var body: some View {
        GroupBox("Subview") {
            Text(name)
                .frame(maxWidth: .infinity)
        }
    }
}

struct Binding_OneWay: View {
    @State private var name = "Sean Ching"
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text("One-Way Binding")
                .font(.largeTitle.bold())
            
            TextField("name", text: $name)
                .textFieldStyle(.roundedBorder)
            
        // Namesubview
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    Binding_OneWay()
}
