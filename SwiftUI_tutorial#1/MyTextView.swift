//
//  MyTextView.swift
//  SwiftUI_tutorial#1
//
//  Created by dhui on 2023/08/08.
//

import SwiftUI

struct MyTextView: View {
    
    @State private var index: Int = 0
    
    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity)
            Spacer()
            
        } // VStack
        .background(backgroundColors[index])
        .onTapGesture {
            print("배경아이템이 클릭됨")
            
            if(self.index == self.backgroundColors.count - 1) {
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}


struct MyTextView_Preview: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
