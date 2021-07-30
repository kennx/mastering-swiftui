//
//  ContentView.swift
//  SwiftUIGestures
//
//  Created by 张剑 on 2021/7/30.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isPressed = false
  
  var body: some View {
    Image(systemName: "star.circle.fill")
      .font(.system(size: 200))
      .scaleEffect(isPressed ? 0.5 : 1.0)
      .animation(.easeInOut)
      .foregroundColor(.green)
      .gesture(
        TapGesture()
          .onEnded {
            self.isPressed.toggle()
          }
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
