//
//  ContentView.swift
//  SwiftUIGestures
//
//  Created by 张剑 on 2021/7/30.
//

import SwiftUI

struct ContentView: View {

  @GestureState private var scaleSize: CGFloat = 1.0
  
  var body: some View {
    Image(systemName: "star.circle.fill")
      .font(.system(size: 100))
      .foregroundColor(.purple)
      .scaleEffect(scaleSize)
      .animation(.linear)
      .gesture(
        MagnificationGesture()
          .updating($scaleSize) { (value, state, transaction) in
            state = value
          }
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


