//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  @State private var circleColorChanged = false
  @State private var heartColorChanged = false
  @State private var heartSizeChanged = false
  
  var body: some View {
    ZStack {
      Circle()
        .frame(width: 200, height: 200)
        .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
        .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3))
      
      Image(systemName: "heart.fill")
        .foregroundColor(heartColorChanged ? .red : .white)
        .font(.system(size: 100))
        .animation(nil) // 從此處取消動畫
        .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
        .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3))
    }
    .onTapGesture {
      self.circleColorChanged.toggle()
      self.heartColorChanged.toggle()
      self.heartSizeChanged.toggle()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
