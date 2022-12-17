//
//  NewItemView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct NewItemView: View {
    var body: some View {
        NavigationView {
            Text("New Item")
                .navigationTitle("New Item")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
