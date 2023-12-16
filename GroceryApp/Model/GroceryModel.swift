//
//  GroceryModel.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import Foundation

final class GroceryItem: ObservableObject, Identifiable {
    
    let id = UUID()
    let name: String
    let price: Double
    let image: String
    var quantity: Int
    var totalItemPrice: Double {
        Double(quantity) * price
    }
    
    init(name: String, price: Double, image: String, quantity: Int) {
        self.name = name
        self.price = price
        self.image = image
        self.quantity = quantity
    }
    
}

final class GroceryList: ObservableObject, Identifiable {
    @Published var groceryList = [
        GroceryItem(name: "Banana", price: 1.99, image: "banana", quantity: 0),
        GroceryItem(name: "Cherry", price: 2.99, image: "cherry", quantity: 0),
        GroceryItem(name: "Kiwi", price: 0.90, image: "kiwi", quantity: 0),
        GroceryItem(name: "Orange", price: 3.99, image: "orange", quantity: 0),
        GroceryItem(name: "Tomato", price: 0.99, image: "tomato", quantity: 0),
        GroceryItem(name: "Pineapple", price: 1.90, image: "pineapple", quantity: 0),
        GroceryItem(name: "Lemon", price: 0.99, image: "lemon", quantity: 0)
    ]
}
