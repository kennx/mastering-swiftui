//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  @State private var recordBegin = false
  @State private var recording = false
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: recordBegin ? 30: 5)
        .frame(width: recordBegin ? 60 : 250, height: 60)
        .foregroundColor(recordBegin ? .red : .green)
        .overlay(
          Image(systemName: "mic.fill")
            .font(.system(.title))
            .foregroundColor(.white)
            .scaleEffect(recording ? 0.7 : 1)
        )
      
      RoundedRectangle(cornerRadius: recordBegin ? 35 : 10)
        .trim(from: 0, to: recordBegin ? 0 : 1)
        .stroke(lineWidth: 5)
        .frame(width: recordBegin ? 70 : 260, height: 70)
        .foregroundColor(.green)
    }
    .onTapGesture {
      withAnimation(.spring()) {
        self.recordBegin.toggle()
      }
      withAnimation(.spring().repeatForever().delay(0.5)) {
        self.recording.toggle()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
