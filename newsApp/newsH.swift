//
//  newsH.swift
//  newsApp
//
//  Created by MBUSER5 on 29/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import SwiftUI

struct newsH: View {
    @ObservedObject private var NewsListViewModel = newsListViewModel()
    
    init() {
        NewsListViewModel.load()
    }
    var body: some View {
    
            
                VStack {
                    NewsListHeader()
                    newsListView(newsCollection: self.NewsListViewModel.news, ImageData: self.NewsListViewModel.imageData)
                    
                }
            
        
        
       
    }
}

struct newsH_Previews: PreviewProvider {
    static var previews: some View {
        newsH()
    }
}
