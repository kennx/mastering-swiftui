//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by 张剑 on 2021/7/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      VStack(alignment: .leading) {
        HStack {
          VStack(alignment: .leading) {
            Text("monday, aug 20".uppercased())
              .font(.caption)
              .foregroundColor(.secondary)
            Text("Your Reading")
              .font(.system(.largeTitle, design: .rounded))
              .fontWeight(.black)
          }
          .layoutPriority(100)
          Spacer()
        }
        .padding([.top, .horizontal])
        .layoutPriority(-100)
        
        HStack {
          CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
            .frame(width: 300)
          CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
            .frame(width: 300)
          CardView(image: "flutter-app", category: "Flutter", heading: "Building Complex Layout with Flutter", author: "Lawrence Tan")
            .frame(width: 300)
          CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
            .frame(width: 300)
        }
        
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
