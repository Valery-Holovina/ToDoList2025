//
//  ToDoList2025App.swift
//  ToDoList2025
//
//  Created by Valery on 28.05.2025.
//

import SwiftUI

/*
 
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct ToDoList2025App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
           
        }
    }
}
