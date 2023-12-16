//
//  GroceryAppApp.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import SwiftUI

@main
struct GroceryAppApp: App {
    let viewModel = GroceryViewModel()

    var body: some Scene {
        WindowGroup {
           
            GroceryListView(viewModel: viewModel)
        }
    }
}
