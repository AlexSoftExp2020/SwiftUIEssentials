//
//  StateBindingWithOtherViews.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 01.03.2025.
//

import SwiftUI

struct BindingToStateExamples {
    var color = Color.blue
    var date = Date()
    var slider = 0.75
    var stepper = 25
    var text = "This is a one-way bind"
    var textField = "This is a two-way bind"
    var textEditor = "TextEditor data"
    var toggle = true
}

struct StateBindingWithOtherViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    StateBindingWithOtherViews()
}
