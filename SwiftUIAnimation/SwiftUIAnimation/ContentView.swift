//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  @State private var isLoading = false
  
  var body: some View {
    ZStack {
      
      Circle()
        .stroke(Color(.systemGray5), lineWidth: 14)
        .frame(width: 100, height: 100)
      
      Circle()
        .trim(from: 0, to: 0.2)
        .stroke(Color.green, lineWidth: 7)
        .frame(width: 100, height: 100)
        .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
        .animation(Animation.linear(duration: 0.5).repeatForever(autoreverses: false))
        .onAppear() {
          self.isLoading = true
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
