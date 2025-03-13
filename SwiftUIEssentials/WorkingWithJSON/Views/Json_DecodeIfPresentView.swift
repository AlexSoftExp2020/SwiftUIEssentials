//
//  Json_DecodeIfPresentView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

struct Json_DecodeIfPresentView: View {
    @State private var oo = Json_DecodeIfPresentOO()
    
    var body: some View {
        VStack {
            HeaderView("JSON",
                       subtitle: "Decode if Present",
                       desc: "You might be using a service that may or may not return some values. In this case, you really have to customize the decoding.",
                       back: .blue,
                       textColor: .white)
            
            GroupBox("Drink Order") {
                Text(oo.drinkOrder.drink)
                
                if let milk = oo.drinkOrder.milk {
                    Text("Milk: \(milk)")
                }
                Text("Sugar: \(oo.drinkOrder.sugarCubes)")
            }
            .padding()
            
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .task {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_DecodeIfPresentView()
}
