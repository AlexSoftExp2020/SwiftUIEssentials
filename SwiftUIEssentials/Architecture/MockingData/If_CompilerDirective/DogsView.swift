//
//  DogsView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 24.02.2025.
//

import SwiftUI

struct DogsView: View {
    @State private var oo = DogsOO()
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
    DogsView()
}
