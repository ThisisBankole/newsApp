//
//  News.swift
//  newsApp
//
//  Created by MBUSER5 on 28/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import Foundation

struct News: Decodable {
    let author: String?
    let title: String?
    let description: String?
    let urlToImage: String?
    let url: String?
    
}

struct newsEnvelop: Decodable {
    let status: String
    let totalResults: Int
    let articles: [News]
    
  
}
