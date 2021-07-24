//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by 张剑 on 2021/7/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      
      
      Button(action: {
        print("Hello World tapped!")
      }) {
        HStack {
          Image(systemName: "square.and.arrow.up")
            .font(.title)
          Text("Share")
            .fontWeight(.semibold)
            .font(.title)
        }
      }
      .buttonStyle(GradienBackgroundStyle())
      
      Button(action: {
        print("Hello World tapped!")
      }) {
        HStack {
          Image(systemName: "square.and.pencil")
            .font(.title)
          Text("Edit")
            .fontWeight(.semibold)
            .font(.title)
        }
      }
      .buttonStyle(GradienBackgroundStyle())
      
      
      Button(action: {
        print("Hello World tapped!")
      }) {
        HStack {
          Image(systemName: "trash")
            .font(.title)
          Text("Delete")
            .fontWeight(.semibold)
            .font(.title)
        }
      }
      .buttonStyle(GradienBackgroundStyle())
      
      
    }
  }
}


struct GradienBackgroundStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(minWidth: 0, maxWidth: .infinity)
      .padding()
      .foregroundColor(.white)
      .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Green"), Color("Light Green")]), startPoint: .leading, endPoint: .trailing))
      .cornerRadius(40)
      .padding(.horizontal, 20)
      .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
