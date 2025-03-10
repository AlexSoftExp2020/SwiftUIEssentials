//
//  StateWithPicker.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct StateWithPicker: View {
    private let names = ["MARK", "Chris", "Scott", "Sean", "Paul"]
    @State private var selectedName = "Scott"
    
    var body: some View {
        VStack(spacing: 15) {
            HeaderView("State",
                       subtitle: "Two-way Binding: Picker",
                       desc: "Every time the picker scrolls, the state variable is getting updated. The Reset button can change the state variable value and the picker will update.",
                       back: .blue,
                       textColor: .white)
            
            Spacer()
            
            Picker("Name", selection: $selectedName) {
                ForEach(names, id: \.self) { name in
                    Text("\(name)")
                }
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            
            Button("Reset") {
                selectedName = "Scott"
            }
            Spacer()
            DescView("Text views can only have read-only bindings.",
                     back: .blue,
                     textColor: .white)
            Text("Selected: \(selectedName)")
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    StateWithPicker()
}
