//
//  AddView.swift
//  ToDoList2025
//
//  Created by Valery on 28.05.2025.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.secondary)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    saveButtonPressed()
                } label: {
                    Text("Save" .uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an Item ✏")
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    
    func saveButtonPressed(){
        if textIsAppropriate(){
            listViewModel.AddItem(title: textFieldText )
            dismiss()
        }else{
            
        }
        
       
    }
    
    func textIsAppropriate() -> Bool{
        if textFieldText.count < 3 {
            alertTitle = "You new todo item must be at least 3 characters long!!! 😕"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
