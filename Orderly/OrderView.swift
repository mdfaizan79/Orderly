//
//  OrderView.swift
//  Orderly
//
//  Created by Md Faizan on 15/05/25.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                
                }
                
                  Section {
                    NavigationLink("Placed Oder") {
                        CheckoutView()
                        //Text("Check Out")
                    }
                
                }
                
            }
            .navigationTitle("Order")
            
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
