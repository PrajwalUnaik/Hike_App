//
//  CustomListrowView.swift
//  HikeApp
//
//  Created by Prajwal U on 23/12/23.
//

import SwiftUI

struct CustomListrowView: View {
 //MARK: Properties
    
    @State var rowLabel : String
    @State var rowIcon : String
    @State var rowContent : String? = nil
    @State var rowTintColor : Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil

    
    
    var body: some View {
        LabeledContent{
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                .fontWeight(.heavy)
            } 
            else if (rowLinkLabel != nil && rowLinkDestination != nil){
                Link(rowLinkLabel! , destination: URL(string : rowLinkDestination!)!)
                    .foregroundColor(.green)
                    .fontWeight(.heavy)

            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListrowView(rowLabel: "desginer",
                          rowIcon: "circle",
                          rowContent: nil,
                          rowTintColor: .black,
        rowLinkLabel: "Github",
        rowLinkDestination: "https://github.com/PrajwalUnaik")
    }
}
