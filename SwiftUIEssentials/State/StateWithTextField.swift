//
//  StateWithTextField.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct StateWithTextField: View {
    @State var name = "Mariana"
    
    var body: some View {
        VStack(spacing: 20) {
            /*
             HeaderView("State", subtitle: "Two-way binding", desc: "Add a dollar sign ($) before the variable name to create a two-way binding between a control and a state variable.", back: .blue, textColor: .white)
             */
            
            Spacer()
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Name:")
            Text("\(name)")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            /*
             DescView("A two-way binding means when the state variable is updated, the control gets updated. And when the control updates the value, the state variable gets updated.",
             back: .blue,
             textColor: .white)
             */
        }
        .font(.title)
    }
}

#Preview {
    StateWithTextField()
}
