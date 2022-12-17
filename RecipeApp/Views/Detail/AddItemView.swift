//
//  AddItemView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct AddItemView: View {
    
    @EnvironmentObject private var itemsVM: ItemsViewModel
        
    @State private var name = ""
    @State private var selectedCategory = ""
    @State private var description = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter name", text: $name)
                } header: {
                    Text("Name")
                }
                
                Section {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                    
                } header: {
                    Text("Category")
                }
                
                Section {
                    TextEditor(text: $description)
                } header: {
                    Text("Descrition")
                }

            }
            
            .toolbar(content: {
                ToolbarItem(
                    placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Label("Cancel", systemImage: "xmark")
                                .labelStyle(.iconOnly)
                        }

                    }
            })
            .toolbar(content: {
                
//                NavigationLink(destination: ItemView(item: Item.all.so), label: )
                ToolbarItem(
                    placement: .navigationBarTrailing) {
                        Button {
                            saveItem()
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty)

                    }
            })
            
            .navigationTitle("New Item")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
            .environmentObject(ItemsViewModel())
    }
}

extension AddItemView {
    
    private func saveItem() {
        let newItem = Item(name: name, image: "", description: description, category: selectedCategory)
        itemsVM.addItem(item: newItem)
    }
}
