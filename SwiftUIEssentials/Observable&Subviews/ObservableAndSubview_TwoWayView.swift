//
//  ObservableAndSubview_TwoWayView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 04.03.2025.
//

import SwiftUI

struct ObservableAndSubview_TwoWayView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ObservableAndSubview_TwoWayView()
}

struct EditableWeatherView: View {
    @Bindable var forecast: ForecastOO
    
    var body: some View {
        List($forecast.sevenDays) { $day in
            Label {
                TextField("Day", text: $day.day)
                    .textFieldStyle(.roundedBorder)
            } icon: {
                Image(systemName: day.icon)
            }
        }
        .tint(.pink)
    }
}

#Preview {
    EditableWeatherView(forecast: ForecastOO())
}
