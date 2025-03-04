//
//  ObservableAndSubview_TwoWayView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 04.03.2025.
//

import SwiftUI

struct ObservableAndSubview_TwoWayView: View {
    @State private var oo = ForecastOO()
    
    var body: some View {
        NavigationStack {
            VStack {
                EditableWeatherView(forecast: oo)
                
                Divider()
                
                Text(oo.sevenDays.map {$0.day}, format: .list(type: .and, width: .narrow))
            }
            .font(.title)
            .navigationTitle("Weather")
        }
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
    @Previewable @State var oo = ForecastOO()
    return EditableWeatherView(forecast: oo)
}
