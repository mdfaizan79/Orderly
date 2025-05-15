//
//  CheckoutView.swift
//  Orderly
//
//  Created by Md Faizan on 15/05/25.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order : Order
    
    let paymentTypes = ["Cash", "Card","UPI"]
    
    @State private var paymentType = "Cash"
    var body: some View {
        VStack{
            Section{
                Picker("How do you want to Pay ?" ,selection: $paymentType){
                    ForEach(paymentTypes,id: \.self){
                        Text($0)
                    }
                }
                
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
