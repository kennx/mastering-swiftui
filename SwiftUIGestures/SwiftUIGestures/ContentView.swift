//
//  ContentView.swift
//  SwiftUIGestures
//
//  Created by 张剑 on 2021/7/30.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isPressed = false
  @GestureState private var longPressTap = false
  
  var body: some View {
    Image(systemName: "star.circle.fill")
      .font(.system(size: 200))
      .opacity(longPressTap ? 0.4 : 1.0)
      .scaleEffect(isPressed ? 0.5 : 1.0)
      .animation(.easeInOut)
      .foregroundColor(.green)
      .gesture(
        LongPressGesture(minimumDuration: 1.0)
          .updating($longPressTap) { (currentState, state, transaction) in
            state = currentState
          }
          .onEnded { _ in
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
