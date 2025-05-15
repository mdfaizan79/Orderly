//
//  ContentView.swift
//  Orderly
//
//  Created by Md Faizan on 07/05/25.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu){ section in
                    Section(section.name){
                        
                        ForEach(section.items){ item in
                            NavigationLink(value : item) {
                             
                                //Text(item.name)
                                ItemRow(item : item)
                            }
                            
                        }
                    }
                    
                }
               
                
            }
            .navigationDestination(for: MenuItem.self){ item in
            ItemDetail(item: item)
            }
            .navigationBarTitle("Menu")
            .listStyle(.grouped)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
