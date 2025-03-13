//
//  Json_DatesView.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 13.03.2025.
//

import SwiftUI

struct Json_DatesView: View {
    @State private var oo = Json_DatesOO()
    
    var body: some View {
        VStack {
            HeaderView("JSON",
                       subtitle: "Dates",
                       desc: "Dates can come in different formats. You can specify a date decoding strategy to help with this.",
                       back: .blue,
                       textColor: .white)
            List(oo.todoList.tasks) { task in
                VStack(alignment: .leading) {
                    Text(task.description)
                    Text(task.dueDate.formatted())
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
            }
            Text(oo.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            oo.fetch()
        }
        .font(.title)
    }
}

#Preview {
    Json_DatesView()
}
