//
//  CoffeeModel.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import Foundation

struct Coffee {
    var id: String
    var name: String
    var image: String
    var description: String
    
    var ingredients: String?
    var instructions: String?
    var rating: Double?
    var numReviews: Int?
    var isFavorite: Bool?
    var price: Double?
}
