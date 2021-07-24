//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by 张剑 on 2021/7/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Image("paris")
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: 300)
      .overlay(
//        Image(systemName: "heart.fill")
//          .font(.system(size: 50))
//          .foregroundColor(.black)
//          .opacity(0.5)
        Rectangle()
          .foregroundColor(.black)
          .opacity(0.4)
          .overlay(
            Text("Paris")
              .font(.largeTitle)
              .fontWeight(.black)
              .foregroundColor(.white)
              .frame(width: 200)
          )
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
