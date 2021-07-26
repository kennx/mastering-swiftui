//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  
  @State private var show = false
  
  var body: some View {
    VStack {
      RoundedRectangle(cornerRadius: 10)
        .frame(width: 300, height: 300)
        .foregroundColor(.green)
        .overlay(
          Text("Show details")
            .font(.system(.largeTitle, design: .rounded))
            .bold()
            .foregroundColor(.white)
        )
      
      if show {
        RoundedRectangle(cornerRadius: 10)
          .frame(width: 300, height: 300)
          .foregroundColor(.purple)
          .overlay(
            Text("Well, here is the details")
              .font(.system(.largeTitle, design: .rounded))
              .bold()
              .foregroundColor(.white)
        )
          .transition(.scaleAndOffset)
      }
    }
    .onTapGesture {
      withAnimation(.spring()) {
        self.show.toggle()
      }
    }
  }
}


extension AnyTransition {
  static var offsetScaleOpacity: AnyTransition {
    AnyTransition.offset(x: -600, y: 0).combined(with: .scale).combined(with: .opacity)
  }
  static var scaleAndOffset: AnyTransition {
    AnyTransition.asymmetric(insertion: .scale(scale: 0, anchor: .bottom), removal: .offset(x: -600, y: 0))
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
