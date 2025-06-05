//
//  ItemModel.swift
//  ToDoList2025
//
//  Created by Valery on 29.05.2025.
//

import Foundation

// Immutable struct
struct ItemModel: Identifiable, Codable {
    let id: String
    let title : String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updatrCompletion()-> ItemModel{
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
