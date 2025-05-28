//
//  ListView.swift
//  ToDoList2025
//
//  Created by Valery on 28.05.2025.
//

import SwiftUI

struct ListView: View {
    @State var item: [String] = [
        "This is the first item!",
        "This is the second item!",
        "This is the third item!"
    ]
    
    var body: some View {
        List{
            ForEach(item, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("TodoList 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }

}

