//
//  CategoriesView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            
            List {
                ForEach(Category.allCases, content: { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }

                    
                })
                
                .navigationTitle("My Categories")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
