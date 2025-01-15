//
//  ContentView.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        TabView {
            Tab("1번", systemImage: "01.circle.fill") {
                
            }
            Tab("2번", systemImage: "02.circle.fill") {
                
            }
            Tab("3번", systemImage: "03.circle.fill") {
                
            }
            Tab("4번", systemImage: "04.circle.fill") {
                
            }
            Tab("설정", systemImage: "gearshape") {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
