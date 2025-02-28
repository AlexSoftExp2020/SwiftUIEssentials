//
//  StateWithToggle.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct StateWithToggle: View {
    @State private var darkerBackground = false
    
    var body: some View {
        ZStack {
            Color(darkerBackground ? .gray : .white)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HeaderView("State",
                           subtitle: "Two-way Binding",
                           desc: "Many controls",
                           back: .blue,
                           textColor: .white)
                
                Spacer()
                
                Toggle(isOn: $darkerBackground) {
                    Text("Darker Background: \(darkerBackground ? "ON" : "OFF")")
                }
                .padding()
                
                Spacer()
                DescView("The ntire view is invalidated and redrawn when a state variable changes.",
                         back: .blue,
                         textColor: .white)
            }
            .font(.title)
        }
    }
}

#Preview {
    StateWithToggle()
}
