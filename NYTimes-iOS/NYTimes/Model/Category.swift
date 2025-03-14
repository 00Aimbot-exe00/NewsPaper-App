//
//  Category.swift
//  NYTimes
//
//  Created by Jeff Lock on 15/08/24.
//  Copyright © 2024 Jeff Lock. All rights reserved.
//

import Foundation

enum Category: String, CaseIterable {
    
    case tech = "Tech"
    case science = "Science"
    case business = "Business"
    case yourmoney = "Your Money"
    case education = "Education"
    case sports = "Sports"
    case space = "Space"
    
    var url: String {
        switch self {
        case .science : return "https://www.nytimes.com/section/science"
        case .tech: return "https://www.nytimes.com/section/technology"
        case .business: return "https://www.nytimes.com/section/business/smallbusiness"
        case .yourmoney: return "https://www.nytimes.com/section/your-money"
        case .education: return "https://www.nytimes.com/section/education?module=SiteIndex&pgtype=Section%20Front&region=Footer"
        case .sports: return "https://www.nytimes.com/section/sports/soccer"
        case .space: return "https://www.nytimes.com/section/science/space"
        }
    }
}
