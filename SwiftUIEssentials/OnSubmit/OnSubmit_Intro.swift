//
//  OnSubmit_Intro.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 11.03.2025.
//

import SwiftUI

struct OnSubmit_Intro: View {
    @State private var name = ""
    @State private var continueOnboarding = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HeaderView("",
                           subtitle: "Introduction",
                           desc: "Use onSubmit to run code when a user submits data in some way. Submit can be different for different controls and views.",
                           back: .blue,
                           textColor: .white)
                
                TextField("name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .submitLabel(.continue)
                    .onSubmit {
                        continueOnboarding = true
                    }
            }
            .navigationDestination(isPresented: $continueOnboarding) {
                Text("Next Step")
            }
            .font(.title)
            .navigationTitle("onSubmit")
        }
    }
}

#Preview {
    OnSubmit_Intro()
}
