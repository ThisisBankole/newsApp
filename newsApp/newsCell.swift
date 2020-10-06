//
//  newsCell.swift
//  newsApp
//
//  Created by MBUSER5 on 29/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import SwiftUI

struct newsCell: View {
    let news: newsViewModel
    let image: Image
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            image
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width-30, height: 360, alignment: .center )
            .clipped()
            .cornerRadius(20)
                .shadow(color: .black, radius: 5, x: 5, y: 5)
            
            Text(news.author)
                .font(.subheadline)
            .padding(10)
                .foregroundColor(.white)
                .background(Color.gray)
            .cornerRadius(10)
            
            Text(news.title)
             .font(.subheadline)
              .foregroundColor(.black)
            
            Text(news.description)
            .font(.caption)
            .foregroundColor(.black)
            
        }.sheet(isPresented: $isPresented) {
            newsArticleView(newsURL: self.news.url)
        }
        .onTapGesture {
            self.isPresented.toggle()
        }
        
    }
}

