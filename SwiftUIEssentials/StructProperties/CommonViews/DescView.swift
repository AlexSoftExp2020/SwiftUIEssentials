//
//  DescView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct DescView: View {
    let description: String
    let back: Color
    let textColor: Color
    
    init(_ description: String, back: Color, textColor: Color) {
        self.description = description
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        Text(description)
            .font(.title2)
            .frame(maxWidth: .infinity)
            .foregroundColor(textColor)
            .padding()
            .background(back)
    }
}

#Preview {
    DescView("Description", back: .blue, textColor: .white)
}
