//
//  BookRowView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 25.02.2025.
//

import SwiftUI

struct BookRowView: View {
    let bookName: String
    
    var body: some View {
        GroupBox {
            VStack {
                Image(systemName: "book.pages")
                Text(bookName)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    BookRowView(bookName: "My Preview Book Title")
        .padding()
}
