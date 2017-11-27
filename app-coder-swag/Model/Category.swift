//
//  Category.swift
//  app-coder-swag
//
//  Created by Andreas Landerer on 27.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import Foundation

struct Category {
    private (set) public var title: String
    private (set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
