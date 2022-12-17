//
//  FavoritiesView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct FavoritiesView: View {
    var body: some View {
        NavigationView {
            Text("You don't save any book to your favorities yet.")
                .padding()
            
            
                .navigationTitle("My Favorities")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritiesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritiesView()
    }
}
