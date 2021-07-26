//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  private var purpleGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255)]), startPoint: .leading, endPoint: .trailing)
  var body: some View {
    ZStack {
      Circle()
        .stroke(Color(.systemGray6), lineWidth: 20)
        .frame(width: 300, height: 300)
      
      Circle()
        .trim(from: 0.0, to: 0.85)
        .stroke(purpleGradient, lineWidth: 20)
        .frame(width: 300, height: 300)
        .overlay(
          VStack {
            Text("85%")
              .font(.system(size: 80, weight: .bold, design: .rounded))
              .foregroundColor(Color(.systemGray))
            Text("Complete")
              .font(.system(.body, design: .rounded))
              .bold()
              .foregroundColor(Color(.systemGray))
          }
        )
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
