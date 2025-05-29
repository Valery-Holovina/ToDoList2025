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
    
    //if it changes previw updates
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
           
        }
    }
}
