//
//  NewItemView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct NewItemView: View {
    
    @State private var showAddItem = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                showAddItem.toggle()
            }, label: {
                Text("Add recipe manually")
            })
                .navigationTitle("New Item")
        }
        //.navigationViewStyle(.stack)
        .sheet(isPresented: $showAddItem) {
            AddItemView()
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
