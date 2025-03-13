//
//  Json_DecodingStrategyView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

struct Json_DecodingStrategyView: View {
    @State private var oo = Json_DecodingStrategyOO()
    
    var body: some View {
        VStack {
            HeaderView("JSON",
                       subtitle: "Decoding Strategy",
                       desc: "Sometimes the JSON key names don't match the naming convention you have  (snake case vs camel case). You can specify a different key coding strategy to handle this.",
                       back: .blue,
                       textColor: .white)
            
            Text("Name: \(oo.fruitInfo.fruitName)")
            Text("Color: \(oo.fruitInfo.fruitColor)")
            
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_DecodingStrategyView()
}
