//
//  ContentView.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-28.
//

import SwiftUI

struct MainView: View {
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            Tab("Beans", systemImage: "rugbyball", value: 0) {
                CoffeBeansView()
            }
            Tab("Recipe", systemImage: "list.bullet.rectangle.portrait", value: 1) {
                RecipeView()
            }
            Tab("Shop", systemImage: "cart", value: 2) {
                RecordView()
            }
            Tab("Community", systemImage: "quote.bubble", value: 3) {
                CommunityView()
            }
            Tab("My Page", systemImage: "person.fill", value: 4) {
                MyPageView()
            }
        }
    }
}

#Preview {
    MainView()
}
