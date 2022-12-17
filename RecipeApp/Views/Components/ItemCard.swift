//
//  ItemCard.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct ItemCard: View {
    
    var item: Item
    
    var body: some View {
        VStack {
            VStack {
                AsyncImage(url: URL(string: item.image)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                    // не відображається
                    //                    .overlay(alignment: .bottom) {
                    //                        Text(item.name)
                    //                   }
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(width: 160, height: 220)
            .background(Color(UIColor.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: .primary.opacity(0.3), radius: 20, y:10)
            
            Text(item.name)
                .font(.title)
                .foregroundColor(.primary)
                //.shadow(radius: 3)
                .frame(maxWidth: 140)
                .padding()

        }

        
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard(item: Item.all[0])
    }
}
