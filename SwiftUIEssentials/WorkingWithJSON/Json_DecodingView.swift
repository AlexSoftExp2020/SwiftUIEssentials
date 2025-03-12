//
//  Json_DecodingView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

import SwiftUI

struct Json_DecodingView: View {
    @State private var oo = Json_DecodingOO()
    
    var body: some View {
        VStack {
            HeaderView("JSON",
                       subtitle: "Decoding",
                       desc: "JSON decoding is the process of taking a JSON data and putting the data into a struct or class.",
                       back: .blue,
                       textColor: .white)
            
            Form {
                Label(oo.user.name, systemImage: "person")
                Label(oo.user.age.description, systemImage: "calendar.badge.clock")
                Label(oo.user.married.description, systemImage: "person.2")
                Label(oo.user.pets.joined(separator: ", "), systemImage: "pawprint")
                Label(oo.user.email ?? "none specified", systemImage: "envelope")
            }
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_DecodingView()
}
