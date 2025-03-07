//
//  SavingData_DataEntry.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 07.03.2025.
//

import SwiftUI

struct SavingData_DataEntry: View {
    @SceneStorage("textInput") var textInput = ""
    @State var stateText = ""
    
    var body: some View {
        VStack(spacing: 20) {
            DescView("Enter data in here and then navigate away. It will be saved to the variable using @SceneStorage.",
                     back: .pink,
                     textColor: .black)
            .layoutPriority(1)
            TextEditor(text: $textInput)
                .border(Color.pink)
                .padding()
            
            DescView("This data will not be saved because it's bound to a @State variable.",
                     back: .pink,
                     textColor: .black)
            TextEditor(text: $stateText)
                .border(Color.pink)
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    SavingData_DataEntry()
}
