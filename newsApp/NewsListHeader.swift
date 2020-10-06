//
//  NewsListHeader.swift
//  newsApp
//
//  Created by MBUSER5 on 29/08/2020.
//  Copyright © 2020 k. All rights reserved.
//

import SwiftUI

struct NewsListHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image(systemName: "largecircle.fill.circle")
                Text("News")
                .bold()
                Image(systemName: "plus")
                Spacer()
            }
            .foregroundColor(.black)
            .font(.largeTitle)
            
            
            Text("Top Headlines")
                .foregroundColor(.gray)
                .font(.largeTitle)
            
        } .padding(.horizontal)
            .padding(.vertical, 10)
      
        
    }
}

struct NewsListHeader_Previews: PreviewProvider {
    static var previews: some View {
        NewsListHeader()
    }
}
