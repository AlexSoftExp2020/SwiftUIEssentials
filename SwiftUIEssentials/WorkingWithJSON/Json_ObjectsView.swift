//
//  Json_ObjectsView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

import SwiftUI

struct Json_ObjectsView: View {
    @State private var oo = Json_ObjectsOO()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("JSON",
                       subtitle: "Objects",
                       desc: "You can also decode JSON objects inside objects structs inside of structs or classes inside of classes.",
                       back: .blue,
                       textColor: .white)
            
            VStack(alignment: .leading) {
                Text(oo.user.name)
                Text(oo.user.address.street)
                HStack {
                    Text(oo.user.address.city)
                    Text(oo.user.address.state)
                    Text(oo.user.address.zipcode)
                }
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
    Json_ObjectsView()
}
