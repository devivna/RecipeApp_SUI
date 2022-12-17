//
//  ItemModel.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case categ1 = "Category 1"
    case categ2 = "Category 2"
    case categ3 = "Category 3"
}

struct Item: Identifiable {
    let id = UUID().uuidString
    let name: String
    let image: String
    let description: String
    let category: Category.RawValue
}

extension Item {
    static let all: [Item] = [
    Item(name: "book1", image: "image1", description: "description1", category: "Category 1"),
    Item(name: "book2", image: "image2", description: "description2", category: "Category 2"),
    Item(name: "book3", image: "image3", description: "description3", category: "Category 3"),
    ]
}
