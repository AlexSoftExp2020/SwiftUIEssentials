//
//  Json_CustomDecodingView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 14.03.2025.
//

import SwiftUI

struct Json_CustomDecodingView: View {
    @State private var oo = Json_CustomDecodingOO()
    
    var body: some View {
        VStack {
            HeaderView("JSON",
                       subtitle: "Custom Decoding",
                       desc: "Sometimes you don't want to create an object that matches the JSON. You can do your own decoding in this case.",
                       back: .blue,
                       textColor: .white)
            
            GroupBox("House Data") {
                Text(oo.houseData.owner)
                Text(oo.houseData.street)
                Text(oo.houseData.city)
            }
            .padding()
            
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_CustomDecodingView()
}
