//
//  ListViewModel.swift
//  ToDoList2025
//
//  Created by Valery on 29.05.2025.
//

import Foundation

class ListViewModel: ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems(){
        let newItems = [
            ItemModel(title: "This is the first one", isCompleted: false),
            ItemModel(title: "This is the second one", isCompleted: true),
            ItemModel(title: "This is the third one", isCompleted: false)
        ]
        items.append(contentsOf: newItems) // if we append multiple items we use contentsOf
        
        
    }
    
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int ){
        items.move(fromOffsets: from, toOffset:to)
    }
    
    func AddItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex { $0.id == item.id}{
            items[index] = item.updatrCompletion()
        }
    }
}
