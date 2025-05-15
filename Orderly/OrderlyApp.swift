//
//  OrderlyApp.swift
//  Orderly
//
//  Created by Md Faizan on 07/05/25.
//

import SwiftUI

@main
struct OrderlyApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
