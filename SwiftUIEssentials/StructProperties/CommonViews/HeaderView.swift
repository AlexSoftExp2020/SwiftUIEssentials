//
//  HeaderView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct HeaderView: View {
    var title = "Title"
    var subtitle = "Subtitle"
    var desc = "Use this to..."
    var back = Color.orange
    var textColor = Color.black
    
    init(_ title: String, subtitle: String, desc: String,
         back: Color = Color.orange, textColor: Color = Color.black) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack(spacing: 15) {
            if !title.isEmpty {
                Text(title)
                    .font(.largeTitle)
            }
            
            Text(subtitle)
                .foregroundStyle(.gray)
            
            DescView(desc, back: back, textColor: textColor)
        }
    }
}

#Preview {
    HeaderView("Title",
               subtitle: "Subtitle",
               desc: "What does what",
               back: .green,
               textColor: .white)
}
