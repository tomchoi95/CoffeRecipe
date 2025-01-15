//
//  Animation.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct Animation: View {
    @State private var isShowing = false
    var body: some View {
        VStack(spacing: 20) {
                    Button(action: {
                        withAnimation(.easeInOut(duration: 1)) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Text("Toggle Text")
                            .font(.title2)
                            .padding()
                            .foregroundStyle(.white)
                            .background(Color.blue)
                            .clipShape(.rect(cornerRadius: 10))
                    })
                    
                    if isShowing {
                        Text("Hello SwiftUI Animation!")
                            .font(.largeTitle)
                            .padding()
                            .transition(.opacity)
        //                    .transition(.scale)
        //                    .transition(.slide)
        //                    .transition(.move(edge: .leading))
                    }
                }
    }
}

#Preview {
    Animation()
}
