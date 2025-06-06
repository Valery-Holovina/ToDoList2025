//
//  ListRowView.swift
//  ToDoList2025
//
//  Created by Valery on 28.05.2025.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle": "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.red)
               
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    
    let item1 = ItemModel(title: "First item", isCompleted: false)
    let item2 = ItemModel(title: "Second item", isCompleted: true)

    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
   
}
