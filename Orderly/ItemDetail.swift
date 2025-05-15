//
//  ItemDetail.swift
//  Orderly
//
//  Created by Md Faizan on 10/05/25.
//

import SwiftUI

struct ItemDetail: View {
    
    let item: MenuItem
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo by \(item.photoCredit)")
//                    .padding(4)
//                    .background(.black)
//                    .font(.caption)
//                .foregroundColor(.white)
//                .offset(x: -5, y: -5)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(8)
                    .offset(x: -3, y: -3)
                    
                    
            }
            
            
            Text(item.description)
                .padding()
            
            Button("Add to Order"){
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item:MenuItem.example)
            .environmentObject(Order())
    }
    
}
