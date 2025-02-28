//
//  HeaderView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let desc: String
    let back: Color
    let textColor: Color
    
    init(_ title: String, subtitle: String, desc: String, back: Color, textColor: Color) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.black)
                .padding(.vertical)
            
            Text(subtitle)
                .font(.title3)
                .foregroundColor(.gray)
            
            Text(desc)
                .font(.title2)
                .frame(maxWidth: .infinity)
                .foregroundColor(textColor)
                .padding()
                .background(back)
        }
    }
}

#Preview {
    HeaderView("State",
               subtitle: "Two-way binding",
               desc: "add decription",
               back: .blue,
               textColor: .white)
}
