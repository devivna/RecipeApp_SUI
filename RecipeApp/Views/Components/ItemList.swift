//
//  ItemList.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct ItemList: View {
    
    var items: [Item]
    
    var rows: [GridItem] = [
        GridItem(.flexible(), spacing: 20 )
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(items.count) \(items.count > 1 ? "items" : "item")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
                
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(items) { item in
                        NavigationLink(destination: ItemView(item: item)) {
                            ItemCard(item: item)
                        }
                    }
                    .padding()
                }
            }
            
            
            
        }
        .padding(.horizontal)
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList(items: Item.all)
    }
}
