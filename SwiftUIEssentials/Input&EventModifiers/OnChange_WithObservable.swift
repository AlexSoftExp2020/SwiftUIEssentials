//
//  OnChange_WithObservable.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 10.03.2025.
//

import SwiftUI

struct OnChange_WithObservable: View {
    @State var oo = OnChange_WithObservableOO()
    @State private var isProcessing = true
    
    var body: some View {
        List(oo.data, id: \.self) { datum in
            Text(datum)
        }
        .overlay {
            if isProcessing {
                ProgressView()
                    .padding()
                    .background(.black.opacity(0.1), in: RoundedRectangle(cornerRadius: 10))
            }
        }
        .font(.title)
        .onAppear {
            oo.fetchData()
        }
        .onChange(of: oo.data, initial: false) { oldValue, newValue in
            isProcessing = false
        }
    }
}

#Preview {
    OnChange_WithObservable()
}
