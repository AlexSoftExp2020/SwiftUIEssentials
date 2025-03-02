//
//  Binding_List.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 03.03.2025.
//

import SwiftUI

struct Binding_List: View {
    @State private var names = ["Mark", "Lem", "Rod"]
    
    var body: some View {
        NavigationStack {
            List($names, id: \.self) { $name in
                NavigationLink(name) {
                    EditNameSubview(name: $name)
                }
            }
            .font(.title)
            .navigationTitle("Names")
        }
    }
}

#Preview {
    Binding_List()
}
