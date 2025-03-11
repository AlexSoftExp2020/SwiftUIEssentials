//
//  OnSubmit_SubmitScope.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 11.03.2025.
//

import SwiftUI

struct OnSubmit_SubmitScope: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var continueOnboarding = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HeaderView("",
                           subtitle: "Submit Scope",
                           desc: "Use submitScope modifier to prevent onSubmit.",
                           back: .blue,
                           textColor: .white)
                
                GroupBox("About You") {
                    TextField("first name", text: $firstName)
                        .submitScope()
                    
                    TextField("last name", text: $lastName)
                        .submitLabel(.continue)
                }
                .textFieldStyle(.roundedBorder)
                .onSubmit(of: .text) {
                    continueOnboarding = true
                }
                .navigationDestination(isPresented: $continueOnboarding) {
                    Text("Next Step")
                }
            }
            .navigationTitle("onSubmit")
        }
        .font(.title)
    }
}

#Preview {
    OnSubmit_SubmitScope()
}
