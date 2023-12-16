//
//  CustomButtonView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 16.12.23.
//

import SwiftUI

struct QuantityButtonView: View {
    
    // MARK: - Properties
    let imageName: String
    let action: () -> Void
    
    // MARK: - Body
    var body: some View {
        Button(action: action, label: {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        })
        .buttonStyle(.plain)
        .padding(8)
        .overlay(
            RoundedRectangle (cornerRadius: 16)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1))
    }
}
