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
    @State private var name = NameClass(first: "Fernanda", last: "Cruz")
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("State",
                       subtitle: "Working With Classes",
                       desc: "A class can be used for a one-way bind.",
                       back: .blue,
                       textColor: .white)
            
            Text("Full Name:")
            Text("\(name.firstName) \(name.lastName)")
                .font(.largeTitle)
                .fontWeight(.black)
            
            VStack {
                Text("Try updating the name:")
                TextField("first name", text: $name.firstName)
                TextField("last name", text: $name.lastName)
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            Spacer()
            DescView("But it won't work for two-way binds. Notice the screen isn't updating the name.",
                     back: .blue,
                     textColor: .white)
        }
        .font(.title)
    }
}

#Preview {
    StateWithClassData()
}
