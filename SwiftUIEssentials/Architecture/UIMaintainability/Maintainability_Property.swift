//
//  Maintainability_Property.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 25.02.2025.
//

import SwiftUI

struct Maintainability_Property: View {
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
                sectionHeaderView
            }
        }
        .headerProminence(.increased)
        .listStyle(.plain)
        .onAppear {
            oo.fetch()
        }
    }
    
    var sectionHeaderView: some View {
        HStack {
            Label("Books (\(oo.data.count))", systemImage: "books.vertical.fill")
            Spacer()
            Button("Add", systemImage: "plus") {
                
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    Maintainability_Property()
}
