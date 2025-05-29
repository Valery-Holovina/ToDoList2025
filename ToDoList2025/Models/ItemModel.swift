//
//  ItemModel.swift
//  ToDoList2025
//
//  Created by Valery on 29.05.2025.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title : String
    let isCompleted: Bool
}
