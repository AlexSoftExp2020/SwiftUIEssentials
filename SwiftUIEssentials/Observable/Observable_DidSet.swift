//
//  Observable_DidSet.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 04.03.2025.
//

import SwiftUI

@Observable
class PersonOO {
    var name = "" {
        willSet {
            // Happens BEFORE the property is changed to the new value.
        }
        didSet {
            // Happens AFTER the property is set.
            validationColor = name.isEmpty ? .red : .green
        }
    }
    var validationColor = Color.red
}

struct Observable_DidSet: View {
    @State private var oo = PersonOO()
    
    var body: some View {
        TextField("name", text: $oo.name)
            .padding()
            .background(oo.validationColor, in: .rect(cornerRadius: 8).stroke())
            .padding()
            .onChange(of: oo.name) { _, newValue in
                oo.validationColor = newValue.isEmpty ? .red : .green
            }
    }
}

#Preview {
    Observable_DidSet()
}
