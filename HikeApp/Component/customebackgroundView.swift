//
//  customebackgroundView.swift
//  HikeApp
//
//  Created by Prajwal U on 22/12/23.
//

import SwiftUI

struct customebackgroundView: View {
    var body: some View {
                
        ZStack {
        // MARK:  3.Depth
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
        // MARK: 2 .Light
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
        // MARK: 1 .Surface
            
        
            LinearGradient(colors: [Color.customGreenLight,
                                    Color.customGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom)
            .cornerRadius(40)
        }.padding(05)
    }
}

#Preview {
    customebackgroundView()
}
