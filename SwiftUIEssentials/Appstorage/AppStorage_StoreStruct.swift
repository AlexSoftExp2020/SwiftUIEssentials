//
//  SwiftUIView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 06.03.2025.
//

import SwiftUI

struct AppStorage_StoreStruct: View {
    @AppStorage("user") var userData = User(name: "Joe Duran", age: 26).encode()!
    @State private var userName = ""
    @State private var age = 0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("AppStorage",
                       subtitle: "Store Structs",
                       desc: "Since you can store Data, you can store a whole struct in AppStorage.",
                       back: .orange,
                       textColor: .black)
            
            Text("AppStorage")
            Text("Name: \(userName)").bold()
            Text("Age: \(age)").bold()
        }
        .font(.title)
        .onAppear {
            // We need to convert the Data to primitive types
            getAppStorageData()
        }
    }
    
    func getAppStorageData() {
        if let appUser = User.decode(userData: userData) {
            userName = appUser.name
            age = appUser.age
        }
    }
}

#Preview {
    AppStorage_StoreStruct()
}
