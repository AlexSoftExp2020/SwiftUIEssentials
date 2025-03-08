//
//  TabViewTwo.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct TabViewTwo: View {
    @Environment(DeveloperOO.self) var developerInfo
    
    var body: some View {
        VStack {
            Text("Tab 2")
                .font(.largeTitle)
            Spacer()
            Text("The name on Tab 1 is:")
                .padding()
            Text("\(developerInfo.name)")
                .bold()
            Spacer()
        }
    }
}

#Preview {
    TabViewTwo()
        .environment(DeveloperOO())
}
