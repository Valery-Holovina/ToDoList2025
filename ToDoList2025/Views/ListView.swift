//
//  ListView.swift
//  ToDoList2025
//
//  Created by Valery on 28.05.2025.
//

import SwiftUI

struct ListView: View {
    
    
    @EnvironmentObject var listViewModel: ListViewModel
  
    
    
    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty{
                NoitemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }else{
                List{
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(.plain)
            }
        }
  
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
    NavigationStack {
        ListView()
    }
    .environmentObject(ListViewModel())

}

//final step is to create an App Icon and Launch Screen( i will not do)
//release
