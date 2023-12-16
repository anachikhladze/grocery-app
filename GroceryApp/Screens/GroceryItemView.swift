//
//  GroceryItemView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import SwiftUI

struct GroceryItemView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: GroceryViewModel
    @ObservedObject var groceryItem: GroceryItem
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 10) {
            Image(groceryItem.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(groceryItem.name)
                    .font(Font.system(size: 18).weight(Font.Weight.semibold))
                
                Text("Quantity: \(groceryItem.quantity)")
                    .font(Font.system(size: 16))
                    .foregroundColor(.secondary)
                
                HStack(spacing: 8) {
                    QuantityButtonView(imageName: "minus-red") {
                        viewModel.minusButtonTapped(groceryItem: groceryItem)
                    }
                    
                    Text("\(groceryItem.quantity)")
                    
                    QuantityButtonView(imageName: "plus") {
                        viewModel.plusButtonTapped(groceryItem: groceryItem)
                    }
                }
            }
            
            Spacer()
            
            Text ("$\(String( format: "%.2f", groceryItem.price))")
                .font(Font.system(size: 16).weight(Font.Weight.semibold))
                .padding(15)
                .overlay(
                    RoundedRectangle (cornerRadius: 10)
                        .stroke( Color.gray.opacity(0.5), lineWidth: 1))
        }
    }
}


// MARK: - Preview
#Preview {
    GroceryItemView(
        viewModel: GroceryViewModel(),
        groceryItem: GroceryItem(
            name: "example item",
            price: 0.99,
            image: "banana",
            quantity: 1
        )
    )
}
