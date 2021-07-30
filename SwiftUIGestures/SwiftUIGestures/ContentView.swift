//
//  ContentView.swift
//  SwiftUIGestures
//
//  Created by 张剑 on 2021/7/30.
//

import SwiftUI

struct ContentView: View {
  
  @GestureState private var dragOffset = CGSize.zero
  @State private var position = CGSize.zero
  
  var body: some View {
    Image(systemName: "star.circle.fill")
      .font(.system(size: 100))
      .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
      .animation(.easeInOut)
      .foregroundColor(.green)
      .gesture(
        DragGesture()
          .updating($dragOffset) { (value, state, transaction) in
            state = value.translation
          }
          .onEnded { value in
            self.position.height += value.translation.height
            self.position.width += value.translation.width
          }
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
