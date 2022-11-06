//
//  ContentView.swift
//  bell-memo
//
//  Created by Ray on 2022/10/14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAddNewCard = false

    var body: some View {

        ZStack(alignment: .bottomTrailing) {
            
            VStack {
                SearchManagerView()
                    .padding(.top, 40)
                
                ScrollView {
                    
                    ForEach (0..<100, id: \.self) { index in
                        
                        RowItemView()
                        
                    }
                    
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            // ffe6f1
            .background(Color(hex: "#E4F1FE"))
            
            Button {
                showAddNewCard.toggle()
            } label: {
                Image(systemName: "highlighter")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(hex: "#7879F1"))
            .foregroundColor(Color.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showAddNewCard) {
                // self.showAddNewCard = true
                AddNewItemView()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
