//
//  Maintainability_Intro.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 24.02.2025.
//

import SwiftUI

struct Maintainability_Intro: View {
    @State var oo = MockBookListOO()
    
    var body: some View {
        List {
            Section {
                ForEach(oo.data) { datum in
                    GroupBox {
                        VStack {
                            Image(systemName: "book.pages")
                            Text(datum.name)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
            } header: {
                HStack {
                    Label("Books (\(oo.data.count))", systemImage: "books.vertical.fill")
                    Spacer()
                    Button("Add", systemImage: "plus") {
                        
                    }
                    .buttonStyle(.bordered)
                }
            }
        }
        .headerProminence(.increased)
        .listStyle(.plain)
        .onAppear {
            oo.fetch()
        }
    }
}

#Preview {
    Maintainability_Intro()
}
