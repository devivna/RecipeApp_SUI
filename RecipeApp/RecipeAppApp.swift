//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    
    @StateObject var itemsViewModel = ItemsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(itemsViewModel)
        }
    }
}
