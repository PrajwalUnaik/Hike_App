//
//  MotionAnimationView.swift
//  HikeApp
//
//  Created by Prajwal U on 22/12/23.
//

import SwiftUI

struct MotionAnimationView: View {
    
    //MARK: properties
    
    @State private var randomCircle: Int = Int.random(in: 1...12)
    @State private var isAnimated:Bool = false
    
    //MARK: Functions
    
    // Functions needed for animation
    //Random SIZE  // Coordinate // scale // speed // Delay
    
    //Random Coordinate
    
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    //RandomSize
    
    func randomSize() -> CGFloat{
        return CGFloat.random(in: 4...80)
    }
    
    //Random Scale
    
    func RandomScale() -> CGFloat{
        return CGFloat.random(in: 0.1...2.0)
    }
    
    //Random Speed
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    
    //randomDelay
    
    func randomDelay() -> Double{
        return Double.random(in: 0...2)
    }
    
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle,id: \.self) { item in
                Circle()
                    .foregroundColor(
                        .white).opacity(0.25)
                    .frame(width: randomSize(), height: randomSize())
                    .position(x: randomCoordinate(),
                              y: randomCoordinate())
                    .scaleEffect(isAnimated ? RandomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimated = true
                        }
                    })
            }
        }.frame(width: 256,height: 256)
            .mask(Circle())
            .drawingGroup()
    }
}

#Preview {
        MotionAnimationView()
        .background(Circle().fill(.teal))
}
