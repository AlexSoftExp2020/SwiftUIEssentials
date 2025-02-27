//
//  PropertyWrappers.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct PropertyWrappers: View {
    @State private var name = ""
    private let names = ["Mark", "Chris", "Scott", "Sean", "Paul"]
    
    var body: some View {
        VStack(spacing: 20) {
            /*
             HeaderView("State", subtitle: "Property Wrappers",
             desc: "Property wrappers can run some logic every time a variable is changed. We can't mutate struct variable values. But @State runs logic that allows variable changes.",
             back: .blue,
             textColor: .white)
             .layoutPriority(1)
             */
            
            Spacer()
            
            Button("Random Name") {
                name = names[Int.random(in: 0...4)]
            }
            Text("Name: \(name)")
            
            Spacer()
            
             /* DescView("Modifying a @State variable value does at least two things. 1) Stores out value outside of the struct. 2) Recreates out view without losing the state variable value.",
              back: .blue,
              textColor: .white) */
        }
        .font(.title)
    }
}

#Preview {
    PropertyWrappers()
}
