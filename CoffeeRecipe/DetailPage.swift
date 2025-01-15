//
//  coffeeComponent.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

// Todo 객체의 id를 넘기면 그 아이디로 이미지와 이름을 매칭

import SwiftUI

struct DetailPage: View {
    @State var coffeeData = CoffeeData()
    var coffee: Coffee
    
    var body: some View {
        VStack {
            Image(coffee.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(coffee.name)
                .font(.system(size: 50))
            
            Section("이래는 설명페이지") {
                Text(coffee.ingredients ?? "")
                    .font(.system(size: 20))
                    .padding()
                Text(coffee.instructions ?? "")
                    .font(.system(size: 20))
                    .padding()
                Text("Rating: \(coffee.rating ?? 0)")
                    .font(.system(size: 20))
                    .padding()
                Text("Number of reviews: \(coffee.numReviews ?? 0)")
                    .font(.system(size: 20))
                    .padding()
                Text("Price: \(coffee.price ?? 0)")
                    .font(.system(size: 20))
                    .padding()
            }
        }
    }
}

var ingredients: String?
var instructions: String?
var rating: Double?
var numReviews: Int?
var isFavorite: Bool?
var price: Double?
