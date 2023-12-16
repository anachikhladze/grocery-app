//
//  CartButtonView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 16.12.23.
//

import SwiftUI

struct CartButtonView: View {
    
    // MARK: - Properties
    let text: String
    let action: () -> Void
    
    // MARK: - Body
    var body: some View {
        Button(action: action, label: {
            ZStack {
                RoundedRectangle (cornerRadius: 10)
                    .strokeBorder()
                    .frame (width: 120, height: 40)
                    .foregroundColor(.white)
                Text (text)
                    .foregroundColor(.white)
                    .bold()
            }
        }).offset(x: 80)
    }
}
