//
//  CDArticle+CoreDataProperties.swift
//  NYTimes
//
//  Created by Jeff Lock on 15/08/24.
//  Copyright © 2024 Jeff Lock. All rights reserved.
//
//

import Foundation
import CoreData


extension CDArticle {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDArticle> {
        return NSFetchRequest<CDArticle>(entityName: "CDArticle")
    }

    @NSManaged public var author: String
    @NSManaged public var id: UUID
    @NSManaged public var imageUrl: String
    @NSManaged public var subtitle: String
    @NSManaged public var title: String
    @NSManaged public var url: String

    
    func set(from article: Article){
        author = article.author
        id = article.id
        imageUrl = article.imageUrl
        subtitle = article.subtitle
        title = article.title
        url = article.url
    }
    
}
