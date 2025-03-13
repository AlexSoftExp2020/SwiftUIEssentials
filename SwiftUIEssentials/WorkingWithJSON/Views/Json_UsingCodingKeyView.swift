//
//  Json_UsingCodingKeyView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

struct Json_UsingCodingKeyView: View {
    @State private var oo = Json_UsingCodingKeyOO()
    
    var body: some View {
        VStack {
            HeaderView("JSON",
                       subtitle: "Using CodingKey",
                       desc: "In some cases you get names in JSON that do not match up to your destination object at all. Use a CodingKeys enum to map them.",
                       back: .blue,
                       textColor: .white)
            
            Text("Name: \(oo.vegetable.name)")
            Text("Color: \(oo.vegetable.color)")
            Text("Quantity: \(oo.vegetable.quantity)")
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_UsingCodingKeyView()
}
