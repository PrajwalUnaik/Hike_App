//
//  cardView.swift
//  HikeApp
//
//  Created by Prajwal U on 22/12/23.
//

import SwiftUI

struct cardView: View {
    
    
    //MARK: - Properties
    
    @State private var imageNumber : Int = 1
    @State private var randomNumber : Int = 1
    @State private var isShowingSheet:Bool = false
    
    //MARK: - functions
    
    func randomImage(){
        
        repeat{
            randomNumber = Int.random(in: 1...5)
        }
        while randomNumber == imageNumber
            imageNumber = randomNumber
     }

     
    
    var body: some View {
        ZStack {
            
            customebackgroundView()
            
            VStack {
                
                VStack (alignment: .leading){
                    
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(
                            colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        
                        Spacer()
                        
                        Button{
                            //Action SHOW A SHEET
                            print("The button was pressed.")
                            isShowingSheet.toggle()
                        }label: {
                            customeButtonView()
                        }.sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible).presentationDetents(   [.medium,.large])
                                
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activities for friends and families.").multilineTextAlignment(.leading).italic().foregroundColor(.customGrayMedium)
                }.padding(.horizontal,30)
                
                
                //MARK: Main Content
                
                
                
                
                ZStack {
                    CustomCircleView()
                
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                //MARK: Fotter
                
                
                Button{
                    //ACTION Generate a random number
                    randomImage()
                    print("The button was pressed -> Explore " )
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 0.25,x: 1,y: 2)
                }.buttonStyle(GradientButton())
                
                
                
            }
        }.frame(width: 320, height: 570)
    }
}

#Preview {
    cardView()
}
