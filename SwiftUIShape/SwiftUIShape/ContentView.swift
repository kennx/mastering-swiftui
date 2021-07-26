//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      Path() { path in
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
      }
      .fill(Color(.systemYellow))
      
      Path() { path in
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
      }
      .fill(Color(.systemTeal))
      
      Path() { path in
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
      }
      .fill(Color(.systemBlue))
      
      Path() { path in
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
      }
      .fill(Color(.systemPurple))
      .offset(x: 20, y: 20)
      
      Path() { path in
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
        path.closeSubpath()
      }
      .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10)
      .offset(x: 20, y: 20)
      .overlay(
        Text("25%")
          .font(.system(.largeTitle, design: .rounded))
          .bold()
          .foregroundColor(.white)
          .offset(x: 65, y: -135)
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
