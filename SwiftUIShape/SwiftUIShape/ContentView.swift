//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      Circle()
        .trim(from: 0.0, to: 0.4)
        .stroke(Color(.systemBlue), lineWidth: 80)
      
      Circle()
        .trim(from: 0.4, to: 0.6)
        .stroke(Color(.systemTeal), lineWidth: 80)
      
      Circle()
        .trim(from: 0.6, to: 0.75)
        .stroke(Color(.systemPurple), lineWidth: 80)
      
      Circle()
        .trim(from: 0.75, to: 1.0)
        .stroke(Color(.systemYellow), lineWidth: 90)
        .overlay(
          Text("25%")
            .font(.system(.title, design: .rounded))
            .bold()
            .foregroundColor(.white)
            .offset(x: 120, y: -100)
        )
    }
    .frame(width: 300, height: 300)
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
