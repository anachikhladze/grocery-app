//
//  GroceryViewModel.swift
//  GroceryApp
//
//  Created by Anna Sumire on 16.12.23.
//

import Foundation
import SwiftUI

final class GroceryViewModel: ObservableObject {
    
    // MARK: - Properties
    @ObservedObject var groceryData = GroceryList()
    @Published var totalPrice: Double = 0.0
    
    var filteredProductList: [GroceryItem] {
        groceryData.groceryList.filter { $0.quantity > 0 }
    }
    
    // MARK: - ViewModel Methods
    func plusButtonTapped(groceryItem: GroceryItem) {
        groceryItem.quantity += 1
        updateTotalPrice()
    }
    
    func minusButtonTapped(groceryItem: GroceryItem) {
        if groceryItem.quantity > 0 {
            groceryItem.quantity -= 1
            updateTotalPrice()
        }
    }
    
    func deleteButtonTapped() {
        for item in groceryData.groceryList {
            item.quantity = 0
        }
        updateTotalPrice()
    }
    
    func updateTotalPrice() {
        totalPrice = filteredProductList.reduce(0) { $0 + $1.totalItemPrice }
    }
}
