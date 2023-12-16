//
//  CartView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import SwiftUI

struct CartView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: GroceryViewModel
    
    // MARK: - Body
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.green)
                .opacity (0.9)
                .frame (width: 350, height: 120)
            
            VStack {
                Text ("Total Price")
                    .font (.system(size: 20))
                
                Text ("$\(String( format: "%.2f", viewModel.totalPrice))")
                    .font (.system(size: 26, weight:
                            .bold))
            }
            .foregroundColor (.white)
            .frame (width: 350, alignment:
                    .leading)
            .padding (.leading, 60)
            
            VStack {
                CartButtonView(text: "Pay Now") {
                    // No action here
                }
                
                CartButtonView(text: "Delete All") {
                    viewModel.deleteButtonTapped()
                }
            }
        }
    }
}
