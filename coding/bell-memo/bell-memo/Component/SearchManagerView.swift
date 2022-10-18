//
//  SearchManagerView.swift
//  bell-memo
//
//  Created by Ray on 2022/10/18.
//

import Foundation
import SwiftUI

struct SearchManagerView: View {
    
    @State var searchText: String = "";
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .padding([.leading], 14)
                .foregroundColor(Color.gray)
            TextField("Search somethings", text: $searchText)
                .font(.system(size: 14))
                .frame(height: 40)
        }
    
        .foregroundColor(Color.green)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .shadow(color: Color.gray.opacity(0.25), radius: 5, x: 0, y: 0)
        )
    }
    
}
