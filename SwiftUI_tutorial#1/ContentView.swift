//
//  ContentView.swift
//  SwiftUI_tutorial#1
//
//  Created by dhui on 2023/08/08.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    // @State: 값의 변화를 감지 -> View에 적용
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                } // HStack
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    print("HStack이 클릭됨: \(self.isActivated)")
                    
                    // Animation과 함께
                    withAnimation {
                        // toggle()하기 위해서 @State가 필요하다.
                        self.isActivated.toggle()
                    }
                } // HStack
                
                // NavigationButton(Link)
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 30))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                }
                .padding(.top, 50)
            } // VStack
            
        } // NavigationView
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
