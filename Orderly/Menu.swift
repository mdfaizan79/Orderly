//
//  Menu.swift
//  Orderly
//
//  Created by Faizan on 07/05/2025.
//  Copyright © 2025 Swift with Faizan. All rights reserved.
//

import SwiftUI

struct MenuSection: Codable , Identifiable{
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Hashable , Identifiable{
    var id: UUID
    var name: String
    var photoCredit: String
    var price: Int
    var restrictions: [String]
    var description: String

    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }

    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }

    #if DEBUG
    static let example = MenuItem(id: UUID(), name: "Maple French Toast", photoCredit: "Joseph Gonzalez", price: 6, restrictions: ["G", "V"], description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Mumbai, Delhi, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
    #endif
}
