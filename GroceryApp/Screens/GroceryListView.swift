//
//  GroceryListView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import SwiftUI

struct GroceryListView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: GroceryViewModel
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                List {
                    ForEach(viewModel.groceryData.groceryList) { item in
                        GroceryItemView(viewModel: viewModel, groceryItem: item)
                    }
                }
                .listStyle(.inset)
                .padding(.horizontal)
                .colorScheme(.dark)
                
                VStack {
                    Spacer()
                    CartView(viewModel: viewModel)
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
                        .foregroundStyle(.white)
                }
            }
        }
    }
}


// MARK: - Preview
struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = GroceryViewModel()
        GroceryListView(viewModel: viewModel)
    }
}
