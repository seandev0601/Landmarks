//
//  PageView.swift
//  Landmarks
//
//  Created by Po Hsiang Chao on 2023/6/19.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        let pages = ModelData().features.map { FeatureCard(landmark: $0) }
        PageView(pages: pages)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
