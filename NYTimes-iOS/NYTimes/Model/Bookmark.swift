//
//  Bookmark.swift
//  NYTimes
//
//  Created by Jeff Lock on 15/08/24.
//  Copyright © 2024 Jeff Lock. All rights reserved.
//

import Foundation

 struct Bookmark {
    var id: UUID
    var article:Article
    var index: Int16
    
     init(id: UUID = UUID(), article: Article, index: Int16) {
        self.id = id
        self.article = article
        self.index = index
    }
}
