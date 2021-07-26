//
//  ContentView.swift
//  SwiftUIState
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  
  @State private var blueCounter = 0
  @State private var greenCounter = 0
  @State private var redCounter = 0
  
  var body: some View {
    VStack {
      Text("\(blueCounter + greenCounter + redCounter)")
        .font(.system(size: 150, weight: .bold, design: .rounded))
      HStack {
        CounterButton(counter: $blueCounter, color: .blue)
        CounterButton(counter: $greenCounter, color: .green)
        CounterButton(counter: $redCounter, color: .red)
      }
      .padding(.horizontal)
    }
  }
}


struct CounterButton: View {
  
  @Binding var counter: Int
  
  var color: Color
  
  var body: some View {
    Button(action: {
      self.counter += 1
    }) {
      Circle()
        .foregroundColor(color)
        .overlay(
          Text("\(counter)")
            .font(.system(size: 100, weight: .bold, design: .rounded))
            .foregroundColor(.white)
        )
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
