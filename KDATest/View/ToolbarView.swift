//
//  ToolbarView.swift
//  KDATest
//
//  Created by Sufiandy Elmy on 07/11/23.
//

import Foundation
import SwiftUI

struct ToolbarView: View {
    
    let iconSizeSearch : CGFloat = 24
    @State var hasNavigation : Bool
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        HStack {
            Button(action: {
                self.mode.animation().wrappedValue.dismiss()
            }) {
                Image(hasNavigation ? "back" : "filter")
                    .resizable()
                    .scaledToFit()
                    .isFilter(hasNavigation)
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Image("cart")
                .resizable()
                .frame(width: iconSizeSearch, height: iconSizeSearch,alignment:.trailing)
                .scaledToFit()
            
        }.padding(16)
    }
}

extension View {
    
    //to make the icon size different for the filter icon
    func isFilter(_ hasNavigation: Bool)-> some View {
        if hasNavigation {
            return frame(width: 24, height: 22, alignment:.leading)
        }else{
            return frame(width: 24, height: 17, alignment:.leading)
        }
    }
    
}

