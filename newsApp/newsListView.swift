//
//  newsListView.swift
//  newsApp
//
//  Created by MBUSER5 on 29/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import SwiftUI

struct newsListView: View {
    let newsCollection: [newsViewModel]
    let ImageData: [String: Data]
    var body: some View {
        List(self.newsCollection, id: \.url) {
            news in
            newsCell(news: news, image: Image(uiImage: self.ImageData[news.urlToImage] == nil ?
                UIImage(systemName: "doc.append")! : UIImage (data: self.ImageData[news.urlToImage]!)!))
        }
        
    }
}


