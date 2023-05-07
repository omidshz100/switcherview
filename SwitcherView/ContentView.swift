//
//  ContentView.swift
//  SwitcherView
//
//  Created by Omid Shojaeian Zanjani on 07/05/23.
//

import SwiftUI

struct ContentView: View {
    @State var isSelected:Bool = false
    var body: some View {
       
        ZStack{
            Color.gray.ignoresSafeArea()
            
            Text("Tab1")
                .font(isSelected ? .title:.callout).bold()
                .foregroundColor(.white)
                .frame(width: isSelected ? 150:100, height: isSelected ? 60:50)
                .background(.red)
                .position(CGPoint(x: isSelected ? 200:250, y: 400))
                .blur(radius: isSelected ? 0:3)
                .rotation3DEffect(.degrees(isSelected ? -25:0), axis: (x: 0, y: 1, z: 0))
                .zIndex(isSelected ? 1:0)
                .onTapGesture {
                    withAnimation(.interpolatingSpring(stiffness: 170 , damping: 8)) {
                        isSelected = true
                    }
                }
            
            
            Text("Tab2")
                .font(!isSelected ? .title:.callout).bold()
                .foregroundColor(.white)
                .frame(width: !isSelected ? 150:100, height: !isSelected ? 60:50)
                .background(.red)
                .position(CGPoint(x: !isSelected ? 140:120, y: 400))
                .blur(radius: !isSelected ? 0:3)
                .rotation3DEffect(.degrees(!isSelected ? 25:0), axis: (x: 0, y: 1, z: 0))
                .zIndex(!isSelected ? 1:0)
                .onTapGesture {
                    withAnimation(.interpolatingSpring(stiffness: 170 , damping: 8)) {
                        isSelected = false
                    }
                }
            
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
