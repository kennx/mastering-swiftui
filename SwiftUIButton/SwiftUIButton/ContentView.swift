//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by 张剑 on 2021/7/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Button(action: {
      print("Hello World tapped!")
    }) {
      Text("Hello World")
        .fontWeight(.bold)
        .font(.title)
        .padding()
        .background(Color.purple)
        .cornerRadius(40)
        .foregroundColor(.white)
        .padding(10)
        .overlay(
          RoundedRectangle(cornerRadius: 40)
            .stroke(Color.purple, lineWidth: 5)
        )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
