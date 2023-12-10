//
//  GroceryModel.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import Foundation

struct GroceryItem: Hashable {
    var id = UUID()
    var name: String
    var price: String
    var image: String
}


struct GroceryList {
    static let groceryList = [
        GroceryItem(name: "Banana", price: "1.99", image: "banana"),
        GroceryItem(name: "Cherry", price: "2.99", image: "cherry"),
        GroceryItem(name: "Kiwi", price: "0.90", image: "kiwi"),
        GroceryItem(name: "Orange", price: "3.99", image: "orange"),
        GroceryItem(name: "Tomato", price: "0.99", image: "tomato"),
        GroceryItem(name: "Pineapple", price: "1.90", image: "pineapple"),
        GroceryItem(name: "Lemon", price: "0.99", image: "lemon")
    ]
}
