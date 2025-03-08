//
//  Environment_ReadOnly.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct Environment_ReadOnly: View {
    @Environment(AddressOO.self) private var addressOO
    var body: some View {
        Form {
            // @Bindable var addressBindable = addressOO
            Section("One-Way Binding") {
                Text("State: \(addressOO.state)")
                    .bold()
            }
            
            Section("Two-Way Binding:") {
                //TextField("Enter State", text: $addressOO.state) /* Cannot find $addressOO in scope */
            }
        }
        .headerProminence(.increased)
    }
}

#Preview {
    Environment_ReadOnly()
        .environment(AddressOO())
}
