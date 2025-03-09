//
//  OnChange_OnMainThread.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 09.03.2025.
//

import SwiftUI

struct OnChange_OnMainThread: View {
    @State private var input = ""
    @State private var validationColor = Color.red
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("onChange",
                       subtitle: "On Main Thread",
                       desc: "It is important to note that the onChange code runs on the main thread. So use it to affect the UI but do not run long processes that could lock up the UI.",
                       back: .blue,
                       textColor: .white)
            
            TextField("PIN (4 characters)", text: $input)
                .textFieldStyle(.roundedBorder)
                .overlay(validationColor, in: RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2))
                .padding()
        }
        .onChange(of: input) { _, newValue in
            //SendToServerToValidate() <- Don't do this
            
            validationColor = Color.red
            
            if newValue.count == 4 {
                validationColor = Color.green
            }
        }
        .font(.title)
    }
}

#Preview {
    OnChange_OnMainThread()
}
