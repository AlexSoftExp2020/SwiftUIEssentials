//
//  DeveloperView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct DeveloperView: View {
    @Environment(DeveloperOO.self) private var dev
    
    var body: some View {
        Text("Hello, \(dev.name)")
            .navigationTitle("Developer View")
    }
}

#Preview {
    DeveloperView()
        .environment(DeveloperOO())
        .font(.title)
}
