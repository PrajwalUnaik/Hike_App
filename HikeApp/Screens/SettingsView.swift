//
//  SettingsView.swift
//  HikeApp
//
//  Created by Prajwal U on 23/12/23.
//

import SwiftUI

struct SettingsView: View {
    
    
    //MARK: properties
    
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
      ]
    
    var body: some View {
        List{
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                    VStack(spacing: -10) {
                        Text("Hike").font(.system(size: 66,weight: .black))
                        Text("Athletes Choice").font(.subheadline)
                    }
                    Image(systemName: "laurel.trailing")
                    Spacer()
                }.font(.system(size: 80,weight: .black))
                    .foregroundStyle(LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark],startPoint: .top,endPoint: .bottom))
                    .padding(.top,8)
                VStack(spacing: 8){
                    Text("Where can you find perfect tracks ")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. \nThe hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                    
                }.multilineTextAlignment(.center)
                    .padding(.bottom , 16)
                    .frame(maxWidth : .infinity)
            }.listRowSeparator(.hidden)
            
            
            
            Section(header: Text("Alternate Icon")){
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices , id: \.self) { item in
                            Button{
                                print("the button was clicked -> Icon Button \(alternateAppIcons[item])")
                                
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item])
                            }label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .cornerRadius(16)
                                    .buttonStyle(.borderless)
                        }
                        }
                    }
                    
                } //: Scrool View
                .padding(.top ,12)
                
                Text("Choose you favorite app icon from the collection above")
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom ,12)
                
            }.listRowSeparator(.hidden)
            
            Section(header: Text("ABOUT THE APP"),
                    footer: HStack{
                Spacer()
                Text("Copyright © All right reserved.")
                Spacer()
            }.padding(.vertical,8))
            {
                //LabeledContent("Application", value: "Hike")
                
                //Advanced label content
                
                CustomListrowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                        
                CustomListrowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                        
                CustomListrowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                        
                CustomListrowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                        
                CustomListrowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Prajwal U", rowTintColor: .mint)
                        
                CustomListrowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Prajwal U", rowTintColor: .pink)
                
                CustomListrowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo , rowLinkLabel: "Github", rowLinkDestination: "https://github.com/PrajwalUnaik")
                        

                
            }
            
        }
    }
}

#Preview {
    SettingsView()
}
