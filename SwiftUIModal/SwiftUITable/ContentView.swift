//
//  ContentView.swift
//  SwiftUITable
//
//  Created by Simon Ng on 6/9/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var showDetailView = false
  @State var selectedArticle: Article?
  
  var body: some View {
    
    NavigationView {
      List(articles) { article in
        ArticleRow(article: article)
          .onTapGesture {
            self.showDetailView = true
            self.selectedArticle = article
          }
      }
      .sheet(item: self.$selectedArticle) { article in
        ArticleDetailView(article: article)
      }
      .navigationBarTitle("Your Reading")
    }
    
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


struct ArticleRow: View {
  var article: Article
  
  var body: some View {
    VStack(alignment: .leading) {
      Image(article.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .cornerRadius(5)
      
      Text(article.title)
        .font(.system(.title, design: .rounded))
        .fontWeight(.black)
        .lineLimit(3)
        .padding(.bottom, 0)
      
      Text("By \(article.author)".uppercased())
        .font(.subheadline)
        .foregroundColor(.secondary)
        .padding(.bottom, 0)
      
      HStack(spacing: 3) {
        ForEach(1...(article.rating), id: \.self) { _ in
          Image(systemName: "star.fill")
            .font(.caption)
            .foregroundColor(.yellow)
        }
        
        
      }
      
      Text(article.excerpt)
        .font(.subheadline)
        .foregroundColor(.secondary)
      
    }
  }
}
