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
    
    @State private var addLoyalDetails = false
    @State private var loyaltyNumber = ""
    
    let TipsAmount = [0,10,20,30]
    @State private var TipAmount = 20
    
    var body: some View {
        Form{
            Section{
                Picker("How do you want to Pay ?" ,selection: $paymentType){
                    ForEach(paymentTypes,id: \.self){
                        Text($0)
                    }
                }
                
                Toggle("Add Loyalty Card", isOn: $addLoyalDetails.animation())
                if addLoyalDetails {
                    TextField("Loyalty Card Number", text: $loyaltyNumber)
                }
            }
            
            Section("Add a Tip ? "){
                Picker("Percentage" , selection: $TipAmount){
                    ForEach(TipsAmount, id: \.self){
                        Text("\($0)%")
                    }
                }
            }
                .pickerStyle(.segmented)
            
            
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
