//
//  StateWithModifiers.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 28.02.2025.
//

import SwiftUI

struct StateWithModifiers: View {
    @State private var isON = true
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("State",
                       subtitle: "With Modifiers",
                       desc: "You can use state to control how your views look and change.",
                       back: .blue,
                       textColor: .white)
            Spacer()
            Button {
                isON.toggle()
            } label: {
                ZStack(alignment: isON ? .trailing : .leading) {
                    HStack {
                        Text("ON").opacity(isON ? 1 : 0)
                        Text("OFF").opacity(isON ? 0 : 1)
                    }
                    .foregroundStyle(.white)
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color.white)
                        .frame(width: 45, height: 50)
                }
            }
            .padding(8)
            .background {
                RoundedRectangle(cornerRadius: 8)
                .fill(isON ? Color.green : Color.red) }
                Spacer()
                DescView("The button's modifiers change because the value of a state variable is changing. The changes are all data driven.",
                         back: .blue,
                         textColor: .white)
            }
            .font(.title)
            .animation(.default, value: isON)
    }
}

#Preview {
    StateWithModifiers()
}
