//
//  Observable_DidSet.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 04.03.2025.
//

import SwiftUI

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
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Observable_DidSet()
}
