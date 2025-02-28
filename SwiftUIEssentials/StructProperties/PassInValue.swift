//
//  PassInValue.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 27.02.2025.
//

import SwiftUI

struct PassInValue: View {
    var name = "Mariana"
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView("State",
                       subtitle: "Struct Variables",
                       desc: "Variables in structs are immutable. Mutable means a variable can change. Immutable means a variable can Not change.",
                       back: .blue,
                       textColor: .white)
            
            Text("Name:")
            Text("\(name)")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            DescView("The name variable is read-only and cannot be updated.",
                     back: .blue,
                     textColor: .white)
        }
        .font(.title)
    }
}

#Preview {
    PassInValue(name: "Mark")
}
