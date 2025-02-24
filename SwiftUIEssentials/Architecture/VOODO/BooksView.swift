//
//  BooksView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 23.02.2025.
//

import SwiftUI

struct BooksView: View {
    @State private var oo = BooksOO()
    
    var body: some View {
        List(oo.data) { datum in
            Text(datum.name)
        }
        .font(.title)
        .onAppear {
            oo.fetch()
        }
    }
}

#Preview {
    BooksView()
}
