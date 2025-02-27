//
//  BindingToState.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 27.02.2025.
//

import SwiftUI

struct BindingToState: View {
    @State var name = "Mariana"
    
    var body: some View {
        VStack(spacing: 20) {
            /*
             HeaderView("State", subtitle: "Struct Variables",
             desc: "Add @State before the variable to make it mutable.",
             back: .blue,
             textColor: .white)
             */
            
            Button {
                name = "MARK" // name is now mutable
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
        }
        .font(.title)
    }
}

#Preview {
    BindingToState(name: "Joe")
}
