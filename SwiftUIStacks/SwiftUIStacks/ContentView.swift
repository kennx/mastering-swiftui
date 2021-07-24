//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by 张剑 on 2021/7/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      HeaderView()
      
      ZStack(alignment: .top) {
          PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple, icon: "seal.fill")
        PricingView(title: "Pro", price: "$19", textColor: .white, bgColor: .yellow, icon: "dial.min")
            .offset(y: 120)
          PricingView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
            .offset(y: 240)
        }
        .padding(.horizontal)
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct HeaderView: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 2) {
        Text("Choose")
          .font(.system(.largeTitle, design: .rounded))
          .fontWeight(.black)
        Text("Your Plan")
          .font(.system(.largeTitle, design: .rounded))
          .fontWeight(.black)
      }
      
      Spacer()
    }
    .padding()
  }
}

struct PricingView: View {
  
  var title: String
  var price: String
  var textColor: Color
  var bgColor: Color
  var icon: String?
  
  var body: some View {
    VStack {
      
      icon.map({
        Image(systemName: $0)
          .font(.largeTitle)
          .foregroundColor(textColor)
      })
      
      Text(title)
        .font(.system(.title, design: .rounded))
        .fontWeight(.black)
        .foregroundColor(textColor)
      Text(price)
        .font(.system(size: 40, weight: .heavy, design: .rounded))
        .foregroundColor(textColor)
      Text("per month")
        .font(.headline)
        .foregroundColor(textColor)
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, alignment: .top)
    .padding(40)
    .background(bgColor)
    .cornerRadius(10)
  }
}
