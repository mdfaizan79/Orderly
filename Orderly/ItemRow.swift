//
//  ItemRow.swift
//  Orderly
//
//  Created by Md Faizan on 10/05/25.
//

import SwiftUI

struct ItemRow: View {
    let item : MenuItem
    let colors:[String:Color] = ["D": .purple,"G": .black,"N": .red,"S": .blue, "V": .green]
    var body: some View {
        HStack{
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
                    //.font(.caption)
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self){ restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction,default : .black ])
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
            }
           
                
        }
        
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
