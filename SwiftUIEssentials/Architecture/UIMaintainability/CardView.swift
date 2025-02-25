//
//  CardView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 25.02.2025.
//

import SwiftUI

struct CardView<Content: View>: View {
    
    let title: String
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        GroupBox {
            Text(title).font(.title.weight(.bold).width(.compressed))
            Divider()
            
            VStack(content: content)
        }
        .padding()
    }
}

#Preview {
    CardView(title: "Preview Title") {
        Text("Here is some content")
        Text("Here is some MORE content")
    }
}
