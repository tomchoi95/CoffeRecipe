//
//  ContentView.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct Main: View {
    @State private var selection: Int = 1
    var body: some View {
        TabView (selection: $selection){
            Tab("1번", systemImage: "01.circle.fill", value: 1) {
                PageOne()
            }
            Tab("2번", systemImage: "02.circle.fill", value: 2) {
                PageTwo()
            }
            Tab("3번", systemImage: "03.circle.fill", value: 3) {
                PageThree()
            }
            Tab("4번", systemImage: "04.circle.fill", value: 4) {
                PageFour()
            }
            Tab("설정", systemImage: "gearshape", value: 5) {
                PageFive()
            }
        }
    }
}

#Preview {
    Main()
}
