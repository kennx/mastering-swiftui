//
//  ArticleDetailView.swift
//  SwiftUINavigation
//
//  Created by 张剑 on 2021/7/28.
//  Copyright © 2021 AppCoda. All rights reserved.
//

import SwiftUI

struct ArticleDetailView: View {
  var article: Article
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        Image(article.image)
          .resizable()
          .aspectRatio(contentMode: .fit)
        
        
        Group {
          Text(article.title)
            .font(.system(.title, design: .rounded))
            .fontWeight(.black)
            .lineLimit(3)
          Text("By \(article.author)".uppercased())
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
        .padding(.bottom, 0)
        .padding(.horizontal)
        
        
        
          Text(article.content)
            .font(.body)
            .padding()
            .lineLimit(1000)
            .multilineTextAlignment(.leading)
        
      }
    }
    .edgesIgnoringSafeArea(.top)
    .navigationBarBackButtonHidden(true)
    .navigationBarItems(leading: Button(action: {
      self.presentationMode.wrappedValue.dismiss()
    }) {
      Image(systemName: "chevron.left.circle.fill")
        .font(.largeTitle)
        .foregroundColor(.white)
    })
  }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
      ArticleDetailView(article: articles[0])
    }
}
