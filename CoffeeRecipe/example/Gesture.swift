//
//  Gesture.swift
//  CoffeeRecipe
//
//  Created by 최범수 on 2025-01-15.
//

import SwiftUI

struct Gesture: View {
    let tap = TapGesture(count: 2)
        .onEnded({ _ in
            print("Double Tap")
        })
    
    let longPress = LongPressGesture()
        .onEnded({ _ in
            print("Long Press")
        })
        
    @State var magnificationScale: CGFloat = 1
    
    var body: some View {
        let magnification = MagnificationGesture(minimumScaleDelta: 1)
            .onChanged({ value in
                print("Magnifying Change: \(value)")
                self.magnificationScale = value
            })
            .onEnded { _ in
                print("Magnifying End")
            }
        Image(systemName: "hand.point.right.fill")
            .gesture(tap)
            .gesture(longPress)
            .gesture(magnification)
            .scaleEffect(magnificationScale)
            .frame(width: 100, height: 90)
    }
}

#Preview {
    Gesture()
}
