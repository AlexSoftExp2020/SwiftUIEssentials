//
//  StateWithStructData.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct NameData {
    var firstName = ""
    var lastName = ""
}

struct StateWithStructData: View {
    @State private var nameData = NameData()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("State",
                       subtitle: "Working With Structs",
                       desc: "You can use a struct for your single source of truth.",
                       back: .blue,
                       textColor: .white)
            Text("Full Name:")
            Text("\(nameData.firstName) \(nameData.lastName)")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Group {
                Text("First and last names are both in the same struct:")
                TextField("first name", text: $nameData.firstName)
                TextField("last name", text: $nameData.lastName)
            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    StateWithStructData()
}
