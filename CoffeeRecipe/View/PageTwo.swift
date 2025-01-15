//
//  PageTwo.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct PageTwo: View {
    @State private var foregroundColor: Color = .black
    @State private var backgroundColor: Color = .white
    
    var body: some View {
        ZStack {
            Text("개미가 어떻게 운다고 생각하니?")
                .font(.largeTitle)
                .padding()
                .foregroundStyle(foregroundColor)
                .background(backgroundColor)
                .contextMenu {
                    Button {
                        self.foregroundColor = .black
                        self.backgroundColor = .white
                    } label: {
                        Text("맴맴")
                        Image(systemName: "ant")
                    }
                    
                    Button {
                        self.foregroundColor = .white
                        self.backgroundColor = .black
                    } label: {
                        Text("꽦")
                        Image(systemName: "ant.fill")
                    }
                    
                    
                }
        }
    }
}

#Preview {
    PageTwo()
}
