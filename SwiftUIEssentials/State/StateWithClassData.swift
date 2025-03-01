//
//  StateWithClassData.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 02.03.2025.
//

import SwiftUI

class NameClass {
    var firstName = ""
    var lastName = ""
    
    init(first: String, last: String) {
        self.firstName = first
        self.lastName = last
    }
}

struct StateWithClassData: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    StateWithClassData()
}
