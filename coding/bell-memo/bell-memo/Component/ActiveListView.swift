//
//  ActiveListView.swift
//  bell-memo
//
//  Created by Ray on 2022/10/18.
//

import Foundation
import SwiftUI

struct MemoPage: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted = false
}

struct ActiveListView: View {

    
    @State var memoList: [MemoPage] = [
        MemoPage(title: "银河系"),
        MemoPage(title: "最屌项目组"),
        MemoPage(title: "橘子大佬", isCompleted: true)
    ]
    var title = "Bell-Memo";
    var isCompleted = true;
    @State var newTagTitle = "";
    
    var body: some View {
        HStack {
            List {
                ForEach(memoList) { item in
                    HStack {
                        Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                            .imageScale(.large)
                            .foregroundColor(item.isCompleted ? .green : .primary)
                        Text(item.title)
                    }
                }
                HStack {
                    Image(systemName: "circle")
                        .imageScale(.large)
                        .foregroundColor(Color(.systemGray3))
                    TextField("input the new tag", text: $newTagTitle) {
                        self.memoList.append(
                            MemoPage(title: self.newTagTitle)
                        )
                        self.newTagTitle = ""
                    }
                }
            }
        }
    }
    
}
