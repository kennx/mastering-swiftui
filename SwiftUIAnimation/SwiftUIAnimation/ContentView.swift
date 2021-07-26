//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  @State private var progress: CGFloat = 0.0
  
  var body: some View {
    ZStack {
      Text("\(Int(progress * 100))%")
        .font(.system(.title, design: .rounded))
        .bold()
      
      Circle()
        .stroke(Color(.systemGray5), lineWidth: 10)
        .frame(width: 150, height: 150)
      
      Circle()
        .trim(from: 0, to: progress)
        .stroke(Color.green, lineWidth: 10)
        .frame(width: 150, height: 150)
        .rotationEffect(Angle(degrees: -90))
    }
    .onAppear() {
      Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
        self.progress += 0.05
        print(self.progress)
        if self.progress >= 1.0 {
          timer.invalidate()
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
