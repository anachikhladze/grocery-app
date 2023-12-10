//
//  GroceryItemView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import SwiftUI

struct GroceryItemView: View {
    @State var quantity: Int = 0
    
    let name: String
    let price: String
    let image: String
    
    var body: some View {
        
        HStack(spacing: 30) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(name)
                    .font(Font.system(size: 18).weight(Font.Weight.semibold))
                
                Text("Quantity: \(quantity)")
                    .font(Font.system(size: 16))
                    .foregroundColor(.secondary)
                
                HStack(spacing: 10) {
                    Button {
                        if quantity > 0 {
                            quantity -= 1
                        }
                        
                    } label: {
                        Image("minus-red")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                    }
                    .buttonStyle(.plain)
                    .padding(8)
                    .overlay(
                        RoundedRectangle (cornerRadius: 16)
                            .stroke( Color.gray.opacity(0.5), lineWidth: 1))
                    
                    Text("\(quantity)")
                    
                    Button {
                        quantity += 1
                    } label: {
                        Image("plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    .buttonStyle(.plain)
                    .padding(8)
                    .overlay(
                        RoundedRectangle (cornerRadius: 16)
                            .stroke( Color.gray.opacity(0.5), lineWidth: 1))
                }
            }
            
            Text(price)
                .font(Font.system(size: 18).weight(Font.Weight.semibold))
                .padding(20)
                .overlay(
                    RoundedRectangle (cornerRadius: 10)
                        .stroke( Color.gray.opacity(0.5), lineWidth: 1))
        }
    }
}

//#Preview {
//    GroceryItemView()
//}
