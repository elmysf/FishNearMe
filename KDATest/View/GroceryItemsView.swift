//
//  GroceryItemsView.swift
//  KDATest
//
//  Created by Sufiandy Elmy on 07/11/23.
//

import Foundation
import SwiftUI

/**
 Grocery item view
 */
struct GroceryItemsView: View {
    
    var groceryItemModels: [GroceryItemModel]
    
    let screenWidth = UIScreen.main.bounds.width/2 - 32
   
    var body: some View {
        
        GridStack(minCellWidth: screenWidth, spacing: 10, numItems: groceryItemModels.count, alignment: .center) { index, cellWidth in
        
            GroceryItemsRow(groceryItemModel: self.groceryItemModels[index])
        
        }
        .background(Rectangle().foregroundColor(Utils.getColor("#fafafa")))
    }
    
}
