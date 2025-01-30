//
//  CoffeBeansView.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-28.
//

import SwiftUI

struct CoffeBeansView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ScrollView(.vertical, showsIndicators: false) {
                Text("최근 먹은 콩")
                ScrollView(.horizontal) {
                    LazyHGrid(
                        rows: Array(repeating: GridItem(.fixed(100), spacing: 10), count: 2), spacing: 10) {
                            ForEach(0...300, id: \.self) { _ in
                                Color.red.frame(width: 100)
                                Color.green.frame(width: 100)
                                Color.blue.frame(width: 100)
                                Color.yellow.frame(width: 100)
                            }
                        }
                }
                Text("블랜드")
                ScrollView(.horizontal) {
                    LazyHGrid(
                        rows: Array(repeating: GridItem(.fixed(250), spacing: 10), count: 2), spacing: 10) {
                            ForEach(0...300, id: \.self) { _ in
                                Color.red.frame(width: 155)
                                Color.green.frame(width: 155)
                                Color.blue.frame(width: 155)
                                Color.yellow.frame(width: 155)
                            }
                        }
                }
                Text("싱글오리진")
                ScrollView(.horizontal) {
                    LazyHGrid(
                        rows: Array(repeating: GridItem(.fixed(250), spacing: 10), count: 2), spacing: 10) {
                            ForEach(0...300, id: \.self) { _ in
                                Color.red.frame(width: 155)
                                Color.green.frame(width: 155)
                                Color.blue.frame(width: 155)
                                Color.yellow.frame(width: 155)
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    CoffeBeansView()
}
