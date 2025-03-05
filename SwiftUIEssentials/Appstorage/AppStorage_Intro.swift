//
//  AppStorage_Intro.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 04.03.2025.
//

import SwiftUI

struct AppStorage_Intro: View {
    @AppStorage("username") var username = "Mark"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HeaderView("",
                           subtitle: "Introduction",
                           desc: "You can use @AppStorage to store small amounts of data for your app.",
                           back: .white,
                           textColor: .black)
                
                Text("AppStorage: username")
                Text("\(username)")
                    .bold()
                
                NavigationLink("Edit", destination: AppStorage_Edit())
            }
            .font(.title)
            .navigationTitle("App Storage")
        }
    }
}


#Preview {
    AppStorage_Intro()
}
