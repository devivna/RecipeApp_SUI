//
//  HomeView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ItemList(items: Item.all)
                
    //            List(Item.all) { item in
    //                Text(item.name)
    //            }

            }
            
            
                .navigationTitle("My Books")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
