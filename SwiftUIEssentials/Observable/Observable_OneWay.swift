//
//  Observable_OneWay.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 03.03.2025.
//

import SwiftUI

@Observable // Solution
class PersonClass {
     var name = " "
}

struct Observable_OneWay: View {
    private var personClass = PersonClass()
    
    var body: some View {
        VStack {
            Button("Add Name") {
                personClass.name = "Natalie Miles"
            }
            .buttonStyle(.borderedProminent)
            
            GroupBox("Name") {
                Text(personClass.name)
            }
        }
        .font(.title)
    }
}

#Preview {
    Observable_OneWay()
}
