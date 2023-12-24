//
//  GradientButtonstyle.swift
//  HikeApp
//
//  Created by Prajwal U on 22/12/23.
//

import Foundation
import SwiftUI


struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
                .padding(.horizontal , 30)
                .background(
                    
                    configuration.isPressed ?
                    LinearGradient(
                        colors: [
                            .customGrayMedium,
                            .customGrayLight],
                        startPoint: .top,
                        endPoint: .bottom)
                    :
                    
                    
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom))
                .cornerRadius(40)
    }
    
}
