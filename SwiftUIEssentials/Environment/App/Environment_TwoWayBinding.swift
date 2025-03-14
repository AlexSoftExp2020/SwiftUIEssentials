//
//  Environment_TwoWayBinding.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 09.03.2025.
//

import SwiftUI

struct Environment_TwoWayBinding: View {
    @Environment(AddressOO.self) private var addressOO
    var body: some View {
        Form {
            @Bindable var addressBindable = addressOO
            Section("One-Way Binding") {
                Text("State: \(addressOO.state)")
                    .bold()
            }
            
            Section("Two-Way Binding:") {
                TextField("Enter State", text: $addressBindable.state)
            }
        }
        .headerProminence(.increased)
    }
}

#Preview {
    Environment_TwoWayBinding()
        .environment(AddressOO())
}
