//
//  ListView.swift
//  ToDoList2025
//
//  Created by Valery on 28.05.2025.
//

import SwiftUI

struct ListView: View {
    @State var item: [ItemModel] = [
        ItemModel(title: "This is the first one", isCompleted: false),
        ItemModel(title: "This is the second one", isCompleted: true),
        ItemModel(title: "This is the third one", isCompleted: false)
    ]
    
    var body: some View {
        List{
            ForEach(item) { item in
                ListRowView(item: item)
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

