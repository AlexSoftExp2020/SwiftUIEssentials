//
//  Observable_TwoWay.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 03.03.2025.
//

import SwiftUI

@Observable
class PersonClass_TwoWay {
    var name = " "
}

struct Observable_TwoWay: View {
    @State private var personClass = PersonClass()
    
    var body: some View {
        VStack {
            GroupBox("Name") {
                TextField("name", text: $personClass.name)
                    .textFieldStyle(.roundedBorder)
                
                Text(personClass.name)
            }
        }
        .font(.title)
    }
}

#Preview {
    Observable_TwoWay()
}
