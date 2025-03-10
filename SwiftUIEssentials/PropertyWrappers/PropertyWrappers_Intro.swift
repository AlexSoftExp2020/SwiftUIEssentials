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
    @State private var newPIN = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView("PropertyWrappers",
                       subtitle: "Introduction",
                       desc: "Property wrappers allow you to add the same logic to many properties.",
                       back: .blue,
                       textColor: .white)
            
            Text("Old PIN: 1234")
            Text("New PIN: 567890")
            
            Button("Save PIN") {
                @FourCharacters var newPin: String
                newPin = "567890"
                newPIN = newPin
            }
            
            Text("Your New PIN: ") +
            Text(newPIN)
                .bold()
        }
        .font(.title)
    }
}

#Preview {
    PropertyWrappers_Intro()
}
