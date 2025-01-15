//
//  PageOne.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct PageOne: View {
    private var colors: [Color] = [.red, .blue, .green]
    private var gridItems = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        Text("1")
        LazyVGrid(columns: gridItems) {
            ForEach(0...10, id: \.self) { index in
                CellContent(index: index, clolr: colors[index % colors.count])
            }
        }
    }
}

#Preview {
    PageOne()
}

struct CellContent: View {
    let index: Int
    let clolr: Color
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50, maxWidth: .infinity, minHeight: 100)
            .background(clolr)
            .clipShape(Rectangle())
            .font(.largeTitle)
            
    }
}
