//
//  CartView.swift
//  GroceryApp
//
//  Created by Anna Sumire on 10.12.23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.green)
                .opacity (0.9)
                .frame (width: 350, height: 120)
            VStack {
                Text ("Total Price")
                    .foregroundColor (.white)
                    .font (.system(size: 20))
                    .frame (width: 350, alignment:
                            .leading)
                    .padding(.leading, 60)
                
                Text ("$\(String( format: "%.2f", 12.00))")
                    .foregroundColor (.white)
                    .font (.system(size: 26, weight:
                            .bold))
                    .frame (width: 350, alignment:
                            .leading)
                    .padding (.leading, 60)
            }
            
            Button {
            } label: {
                ZStack {
                    RoundedRectangle (cornerRadius: 10)
                        .strokeBorder ()
                        .frame (width: 120, height: 50)
                        .foregroundColor (.white)
                    Text ("Pay Now >")
                        .foregroundColor (.white)
                        .bold()
                }
            }.offset(x: 80)
        }
    }
}
#Preview {
    CartView()
}
