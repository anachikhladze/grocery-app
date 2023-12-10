//
//  GroceryListView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import SwiftUI

struct GroceryListView: View {
    @State private var items = GroceryList.groceryList
   
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(items, id: \.self) { item in
                        GroceryItemView(name: item.name, price: "\(item.price)$", image: item.image)
                    }
                    .onDelete(perform: deleteItem)
                }
                .listStyle(.inset)
                
                VStack {
                    Spacer()
                    CartView()
                        .frame(maxWidth: .infinity)
                        .edgesIgnoringSafeArea(.bottom)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Groceries")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                }
            }
        }
    }
    
    private func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

#Preview {
    GroceryListView()
}
