//
//  RowItemView.swift
//  bell-memo
//
//  Created by Ray on 2022/11/4.
//

import SwiftUI

struct RowItemView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Swift doc")
                .font(.subheadline).bold()
            
            Text("链接")
                .font(.caption)
                .foregroundColor(.white)
                .padding(10)
                .background(Color(hex: "#F178B6"))
                .cornerRadius(10)
            
            Text("https://gitee.com/guangjie2021/SwiftUICn/blob/master/README_CN.md#state-and-data-flow-%E7%8A%B6%E6%80%81%E5%92%8C%E6%95%B0%E6%8D%AE%E6%B5%81")
                .font(.subheadline)
                .foregroundColor(.green)
                .lineLimit(2)
        }
        .padding(10)
        .cornerRadius(20)
        .background(Color(hex: "#fff"))
        
    }
}

struct RowItemView_Previews: PreviewProvider {
    static var previews: some View {
        RowItemView()
    }
}
