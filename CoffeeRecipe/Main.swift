//
//  ContentView.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct Main: View {
    @State private var selection: Int = 1
    @State var coffees = CoffeeData()
    
    var body: some View {
        TabView (selection: $selection){
            Tab("Recipes", systemImage: "cup.and.saucer.fill", value: 1) {
                Recipe()
            }
            Tab("2번", systemImage: "02.circle.fill", value: 2) {
                PageTwo()
            }
            Tab("3번", systemImage: "03.circle.fill", value: 3) {
                PageThree()
            }
            Tab("Favorite", systemImage: "heart.circle", value: 4) {
                Favorite()
            }
            Tab("My Page", systemImage: "gearshape", value: 5) {
                MyPage()
            }
        }
    }
}

#Preview {
    Main()
}
