//
//  newsViewModel.swift
//  newsApp
//
//  Created by MBUSER5 on 29/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import Foundation

struct newsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "unknown"
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var url: String {
        return news.url ?? ""
    }

    var urlToImage: String {
        return news.urlToImage ?? ""
        
    }
    
   
}
