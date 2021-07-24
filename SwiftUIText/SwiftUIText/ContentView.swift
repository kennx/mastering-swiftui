//
//  ContentView.swift
//  SwiftUIText
//
//  Created by 张剑 on 2021/7/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
      .fontWeight(.bold)
      .font(.title)
      .foregroundColor(.gray)
      .multilineTextAlignment(.center)
      .lineSpacing(10.0)
      .padding()
      .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
      .shadow(color: .gray, radius: 2, x: 0.0, y: 15)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
