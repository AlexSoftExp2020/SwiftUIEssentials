//
//  SavingData_SceneStorage.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 07.03.2025.
//

import SwiftUI

struct SavingData_SceneStorage: View {
    @State private var textInput = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HeaderView("",
                           subtitle: "Introduction",
                           desc: "Use @SceneStorage to save data for just one screen that will persist for the lifetime of the app.",
                           back: .pink,
                           textColor: .black)
                
                NavigationLink("Enter New Data", destination: SavingData_DataEntry())
            }
            .font(.title)
            .navigationTitle("@SceneStorage")
        }
    }
}

#Preview {
    SavingData_SceneStorage()
}
