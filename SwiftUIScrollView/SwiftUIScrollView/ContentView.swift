//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by 张剑 on 2021/7/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      HStack {
        VStack(alignment: .leading) {
          Text("monday, aug 20".uppercased())
            .foregroundColor(.secondary)
            .font(.caption)
          Text("Your Reading")
            .font(.system(.largeTitle, design: .rounded))
            .fontWeight(.black)
        }
        .padding()
        Spacer()
      }
      VStack {
        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
        CardView(image: "flutter-app", category: "Flutter", heading: "Building Complex Layout with Flutter", author: "Lawrence Tan")
        CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
