//
//  ItemsViewModel.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

class ItemsViewModel: ObservableObject {
    @Published private(set) var items: [Item] = []
    
    init() {
        items = Item.all
    }
    
    func addItem(item: Item) {
        items.append(item)
    }
    
}

