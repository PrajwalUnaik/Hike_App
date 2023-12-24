//
//  customeButtonView.swift
//  HikeApp
//
//  Created by Prajwal U on 22/12/23.
//

import SwiftUI

struct customeButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.white,
                                 .customGreenLight,
                                 .customGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom))
                Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 28))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom))
        }.frame(width: 58, height: 52)
    }
}

#Preview {
    customeButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
