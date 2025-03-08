//
//  Environment_TabView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import SwiftUI

struct Environment_TabView: View {
    var body: some View {
        TabView {
            TabViewOne()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("One")
            }
            //MARK: TODO
        }
    }
}

#Preview {
    Environment_TabView()
}
