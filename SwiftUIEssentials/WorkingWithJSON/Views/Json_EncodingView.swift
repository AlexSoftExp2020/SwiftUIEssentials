//
//  Json_EncodingView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 12.03.2025.
//

import SwiftUI

struct Json_EncodingView: View {
    @State private var oo = Json_Encoding()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("JSON",
                       subtitle: "Encoding",
                       desc: "JSON encoding is the process of taking a struct or class and converting it to JSON data.",
                       back: .blue,
                       textColor: .white)
            
            Button("Save to JSON") {
                oo.save()
            }
            .buttonStyle(.borderedProminent)
            
            Text(oo.formattedJson)
                .font(.system(.title, design: .monospaced))
            
            Spacer()
            
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_EncodingView()
}
