//
//  CustomCircleView.swift
//  HikeApp
//
//  Created by Prajwal U on 22/12/23.
//

import SwiftUI





struct CustomCircleView: View {
    
    @State private var isAnimaterGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        Color(.colorIndigoMedium),
                        Color(.colorSlamonLight)],
                                   startPoint: isAnimaterGradient ? .topLeading : .bottomLeading,
                                   endPoint: isAnimaterGradient ? .bottomTrailing : .topLeading))
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimaterGradient.toggle()
                    }
                }
            MotionAnimationView()
        }.frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircleView()
}
