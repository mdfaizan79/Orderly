//
//  MainView.swift
//  Orderly
//
//  Created by Md Faizan on 15/05/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu",systemImage: "list.bullet")
                }
            OrderView()
                .tabItem{
                    Label("Order",systemImage: "square.and.pencil")
                }
            
        }
    }
}

#Preview {
    MainView()
        .environmentObject(Order())
}
