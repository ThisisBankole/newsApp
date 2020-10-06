//
//  newsListViewModel.swift
//  newsApp
//
//  Created by MBUSER5 on 29/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import Foundation

class newsListViewModel: ObservableObject {
    @Published var news = [newsViewModel]()
    @Published var imageData = [String: Data]()
    
    func load() {
        getNews()
        
    }
    
    private func getNews() {
        let networkM = networkManager()
        networkM.getNews { (newsArticles) in
            guard let news = newsArticles else { return }
            
            let newsVM = news.map(newsViewModel.init)
            self.getImages(for: newsVM)
            DispatchQueue.main.async {
                self.news = newsVM
            }
        }
    }
    
    private func getImages(for news: [newsViewModel]) {
        let nm = networkManager()
        news.forEach { n in
            guard n.urlToImage.isEmpty else { return }
            
            nm.getImage(urlString: n.urlToImage) {(data) in
                guard let data = data else { return }
                
                DispatchQueue.main.async {
                    self.imageData[n.urlToImage] = data
                }
            }
            
        }
    }
    
}
