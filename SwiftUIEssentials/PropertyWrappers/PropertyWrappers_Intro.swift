//
//  PropertyWrappers_Intro.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 27.02.2025.
//

import SwiftUI

@propertyWrapper
struct FourCharacters {
    private var value = ""
    
    var wrappedValue: String {
        get { return value }
        set { value = String(newValue.prefix(4)) }
    }
}

struct PropertyWrappers_Intro: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PropertyWrappers_Intro()
}
