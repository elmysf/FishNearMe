//
//  TabLayoutView.swift
//  KDATest
//
//  Created by Sufiandy Elmy on 07/11/23.
//

import Foundation
import SwiftUI

/**
 View to act as tab view and help in selecting the various categories
 */
struct TabLayoutView: View {
    
    var categoryItemModel  : [CategoryItemModel]
    @ObservedObject var categoryObservable : CategorySelectedObservable
    var onTabChangeListener: TabChangeDelegate?
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                //contents
                ForEach(categoryItemModel) { result in
                    TabLayoutRow(categoriesItemModel: result,
                                 selectedId: self.categoryObservable.selectedId,
                                 onTabChangeDelegate: self.onTabChangeListener)
                }
            }.padding(.top)
        }
    }
}
