//
//  AppStorage_WhatCanBeStored.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 06.03.2025.
//

import SwiftUI

struct AppStorage_WhatCanBeStored: View {
    @AppStorage("myBool") var myBool = true
    @AppStorage("myInt") var myInt = 21
    @AppStorage("myDouble") var myDouble = 1.99
    @AppStorage("myString") var myString = "ABCabc"
    @AppStorage("myUrl") var myUrl = URL(string: "https://www.bigmountainstudio.com")!
    @AppStorage("myData") var myData = Data("Hello smile 👏".utf8)
    @AppStorage("myDate") var myDate = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("AppStorage",
                       subtitle: "What Can Be Stored?",
                       desc: "Currently, you can store: Bool, Int, Double, String, URL, Data.",
                       back: .orange,
                       textColor: .black)
            
            Text("Stored in AppStorage").bold()
            Text("\(myBool.description)")
            Text("\(myInt)")
            Text("\(myDouble)")
            Text("\(myString)")
            Link("\(myUrl)", destination: myUrl).font(.title2)
            Text("\(String(decoding: myData, as: UTF8.self))")
        }
        .font(.title)
    }
}

#Preview {
    AppStorage_WhatCanBeStored()
}
