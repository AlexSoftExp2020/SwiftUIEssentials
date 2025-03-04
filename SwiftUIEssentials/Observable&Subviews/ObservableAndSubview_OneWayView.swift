//
//  ObservableAndSubview_OneWayView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 04.03.2025.
//

import SwiftUI

@Observable
class ForecastOO {
    var sevenDays = [Weather]()
    
    struct Weather: Identifiable {
        let id = UUID()
        var day = ""
        var icon = ""
    }
}

struct ObservableAndSubview_OneWayView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ObservableAndSubview_OneWayView()
}
