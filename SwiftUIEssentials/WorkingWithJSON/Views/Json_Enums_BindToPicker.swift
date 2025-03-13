//
//  Json_Enums_BindToPicker.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

struct Json_Enums_BindToPicker: View {
    @State private var oo = Json_EnumsOO()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("JSON",
                       subtitle: "Enums - Binding to Picker",
                       desc: "Example of how to decode JSON itno enums and bind enum to a Picker.",
                       back: .blue,
                       textColor: .white)
            
            Text(oo.carData.name)
            
            Picker("Car Type", selection: $oo.carData.type) {
                ForEach(CarType.allCases) { type in
                    Text(type.rawValue.capitalized)
                        .tag(type)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            
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
    Json_Enums_BindToPicker()
}
