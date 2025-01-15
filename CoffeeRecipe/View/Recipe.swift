//
//  Recipe.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct Recipe: View {
    @State var coffeeData = CoffeeData()
    private var gridItems = [ GridItem(.flexible()), GridItem(.flexible()) ]
    let longPress = LongPressGesture()
        .onEnded({ _ in
            print("Long Press")
        })
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridItems) {
                    ForEach(coffeeData.coffeeList, id: \.id) { coffee in
                        NavigationLink(destination: DetailPage(coffee: coffee)) {
                            CoffeeContent(coffeeImage: coffee.image, name: coffee.name)
                        }
                    }
                    .contextMenu(){
                        Button("이름 바꾸기") {
                            
                        }
                        Button("삭제") {
                            //                    coffeeData.coffeeList.remove(at: )
                        }
                    }
                }
                .navigationTitle("Recipe")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                print("Edit button tapped")
                            }) {
                                Text("Edit")
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    Recipe()
}

struct CoffeeContent: View {
    let coffeeImage: String
    let name: String
    var body: some View {
        VStack {
            Image(coffeeImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(.rect(cornerRadius: 18))

            Text("\(name)")
                .font(.body)
        }
            
    }
}
