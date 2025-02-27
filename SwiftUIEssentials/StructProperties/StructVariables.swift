//
//  StructVariables.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 26.02.2025.
//

import SwiftUI

struct StructVariables: View {
    var name = "Mariana"
    
    var body: some View {
        VStack(spacing: 20) {
            /*
             HeaderView("State", subtitle: "Struct Variables", desc: "Variables in structs are immutable. Mutable means a variable can change. Immutable means a variable can Not change.", back: .blue, textColor: .white)
             */
            
            Button {
                // self.name = "Mark" // Error: Cannot assign to property: 'self' is immutable
            } label: {
                Text("Change Name to 'Mark'")
                    .padding()
                    .background(Capsule().stroke(Color.blue, lineWidth: 2))
            }

            Spacer()
            
            Text("Name:")
            Text("\(name)")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            //DescView("The name variable is read-only and cannot be updated.", back: .blue,  textColor: .whilte)
        }
        .font(.title)
    }
}

#Preview {
    StructVariables()
}
