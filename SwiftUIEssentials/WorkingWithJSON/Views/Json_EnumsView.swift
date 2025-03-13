//
//  Json_EnumsView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

struct Json_EnumsView: View {
    @State private var oo = Json_EnumsOO()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("JSON",
                       subtitle: "Enums",
                       desc: "Sometimes a field in JSON can only be a set number of values. In this case, you might want to decode that value into an enum.",
                       back: .blue,
                       textColor: .white)
            Text(oo.carData.name)
            Text(oo.carData.type.rawValue.capitalized)
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_EnumsView()
}
