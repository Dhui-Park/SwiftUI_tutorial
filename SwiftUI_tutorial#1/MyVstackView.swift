//
//  MyVstackView.swift
//  SwiftUI_tutorial#1
//
//  Created by dhui on 2023/08/08.
//

import SwiftUI

struct MyVstackView: View{
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }
        .background(Color.red)
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
