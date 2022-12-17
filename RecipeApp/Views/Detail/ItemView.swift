//
//  ItemView.swift
//  RecipeApp
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct ItemView: View {
    
    var item: Item
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: item.image)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(Color(UIColor.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: .primary.opacity(0.3), radius: 20, y:10)
            
           
                Text(item.name)
                    .font(.title)
                    .foregroundColor(.primary)
                    .frame(maxWidth: 140, alignment: .center)
            
            
            VStack {
                Text(item.description)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding()
            }
        }
        // фон залазить на верх
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item.all[0])
    }
}
