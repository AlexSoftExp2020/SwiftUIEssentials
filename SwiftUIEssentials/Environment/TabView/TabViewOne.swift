//
//  TabViewOne.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct TabViewOne: View {
    @Environment(DeveloperOO.self) var devInfo
    
    var body: some View {
        VStack {
            Text("Tab 1")
                .font(.largeTitle)
            
            Spacer()
            
            Text("\(devInfo.name)")
            
            Button("Update") {
                devInfo.name = "New Awesome Dev"
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
    }
}

#Preview {
    TabViewOne()
        .environment(DeveloperOO())
}
