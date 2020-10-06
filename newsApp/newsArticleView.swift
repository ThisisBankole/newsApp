//
//  newsArticleView.swift
//  newsApp
//
//  Created by MBUSER5 on 29/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import SwiftUI

struct newsArticleView: View {
    var newsURL: String
    var body: some View {
        SwiftUIWebView(urlString: newsURL)
            .padding(.top, 20)
        
    }
}

