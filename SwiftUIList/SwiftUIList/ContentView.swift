//
//  ContentView.swift
//  SwiftUIList
//
//  Created by 张剑 on 2021/7/27.
//

import SwiftUI

struct ContentView: View {
  
  
  var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
                      Restaurant(name: "Homei", image: "homei"),
                      Restaurant(name: "Teakha", image: "teakha"),
                      Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
                      Restaurant(name: "Petite Oyster", image: "petiteoyster"),
                      Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
                      Restaurant(name: "Po's Atelier", image: "posatelier"),
                      Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
                      Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
                      Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
                      Restaurant(name: "Upstate", image: "upstate"),
                      Restaurant(name: "Traif", image: "traif"),
                      Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),
                      Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
                      Restaurant(name: "Five Leaves", image:"fiveleaves"),
                      Restaurant(name: "Cafe Lore", image: "cafelore"),
                      Restaurant(name: "Confessional", image: "confessional"),
                      Restaurant(name: "Barrafina", image: "barrafina"),
                      Restaurant(name: "Donostia", image: "donostia"),
                      Restaurant(name: "Royal Oak", image: "royaloak"),
                      Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
  ]
  
  var cards = [Card(title: "The Comprehensive Guide to the State Management in iOS", author: "Alexey Naumov", rating: 4, excerpt: "There are many challenges in the software development, but there is one beast that tends to screw things up much more often than the others: the problem of app’s state management and data propagation.", image: "state-management"),
               Card(title: "Using Swift Protocols to Manage App Configuration", author: "Gabriel Theodoropoulos", rating: 4, excerpt: "Hello and welcome to a new tutorial! One of the most common concepts met and used in Swift by all developers is protocols, and I don’t think there’s even one developer who doesn’t know about them.", image: "protocols"),
               Card(title: "Drawing a Border with Rounded Corners", author: "Simon Ng", rating: 4, excerpt: "With SwiftUI, you can easily draw a border around a button or text (and it actually works for all views) using the border modifier.", image: "swiftui-button"),
               Card(title: "Building a Simple Text Editing App", author: "Gabriel Theodoropoulos", rating: 5, excerpt: "Today we are going to focus on a commonly used family of controls which are vital to every application. Their primary purpose is to gather user input as well as to display certain message types to users. We are going to talk about text controls.", image: "macos-programming"),
               Card(title: "Building a Flutter App with Complex UI", author: "Lawrence Tan", rating: 4, excerpt: "Hello there! Welcome to the second tutorial of our Flutter series. In the last tutorial, you learned the basics of building a Flutter app. So if you have not gone through it, please take a pit stop here, visit it first before proceeding with this tutorial.", image: "flutter-app")
]
  
  var body: some View {
    List(cards) { card in
      CardImageRow(card: card)
    }
  }
}


struct CardImageRow: View {
  var card: Card
  var body: some View {
    VStack {
      Image(card.image)
        .resizable()
        .scaledToFit()
      HStack {
        Text(card.title)
          .font(.title)
          .fontWeight(.black)
        Spacer()
      }
      HStack {
        Text(card.author)
          .font(.caption)
          .foregroundColor(.secondary)
        Spacer()
      }
      HStack {
        ForEach(0 ..< card.rating) { item in
          Image(systemName: "star.fill")
            .foregroundColor(.yellow)
        }
        Spacer()
      }
      HStack {
        Text(card.excerpt)
          .font(.footnote)
          .foregroundColor(.secondary)
        Spacer()
      }
    }
  }
}


struct FullImageRow: View {
  var restaurant: Restaurant
  
  var body: some View {
    ZStack {
      Image(restaurant.image)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(height: 200)
        .cornerRadius(20)
        .overlay(
          Rectangle()
            .foregroundColor(.black)
            .cornerRadius(10)
            .opacity(0.2)
        )
      Text(restaurant.name)
        .font(.system(.title, design: .rounded))
        .fontWeight(.black)
        .foregroundColor(.white)
    }
  }
}


struct Restaurant: Identifiable {
  var id: UUID = UUID()
  var name: String
  var image: String
}


struct Card: Identifiable {
  var id: UUID = UUID()
  var title: String
  var author: String
  var rating: Int
  var excerpt: String
  var image: String
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct BasicImageRow: View {
  var restaurant: Restaurant
  var body: some View {
    HStack {
      Image(restaurant.image)
        .resizable()
        .frame(width: 40, height: 40)
        .cornerRadius(5)
      Text(restaurant.name)
    }
  }
}
