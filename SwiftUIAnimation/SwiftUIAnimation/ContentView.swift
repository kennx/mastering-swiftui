//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  
  @State private var cardIndex: Int = 0
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Text("Reading")
          .font(.system(size: 64, weight: .black, design: .rounded))
        Spacer()
      }
      .padding(.horizontal)
      HStack {
        Text("List")
          .font(.system(size: 64, weight: .black, design: .rounded))
        Spacer()
      }
      .padding(.horizontal)
      ZStack {
        switch cardIndex {
        case 0:
          CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
            .transition(.asymmetric(insertion: .scale(scale: 1, anchor: .bottom).combined(with: .opacity), removal: .scale(scale: 0, anchor: .bottom).combined(with: .opacity)))
        case 1:
          CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
            .transition(.asymmetric(insertion: .scale(scale: 1, anchor: .bottom).combined(with: .opacity), removal: .scale(scale: 0, anchor: .bottom).combined(with: .opacity)))
        case 2:
          CardView(image: "flutter-app", category: "Flutter", heading: "Building Complex Layout with Flutter", author: "Lawrence Tan")
            .transition(.asymmetric(insertion: .scale(scale: 1, anchor: .bottom).combined(with: .opacity), removal: .scale(scale: 0, anchor: .bottom).combined(with: .opacity)))
        case 3:
          CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
            .transition(.asymmetric(insertion: .scale(scale: 1, anchor: .bottom).combined(with: .opacity), removal: .scale(scale: 0, anchor: .bottom).combined(with: .opacity)))
        default:
          CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
            .transition(.asymmetric(insertion: .scale(scale: 1, anchor: .bottom).combined(with: .opacity), removal: .scale(scale: 0, anchor: .bottom).combined(with: .opacity)))
        }
        
        
      }
      .onTapGesture {
        withAnimation(.spring()) {
          if self.cardIndex >= 3 {
            self.cardIndex = 0
          } else {
            self.cardIndex += 1
          }
        }
      }
      Spacer()
    }
    
  }
  
  
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
