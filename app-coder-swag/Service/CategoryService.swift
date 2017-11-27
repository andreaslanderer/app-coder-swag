//
//  CategoryService.swift
//  app-coder-swag
//
//  Created by Andreas Landerer on 27.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import Foundation

class CategoryService {
    static let instance = CategoryService()
    
    func getCategories() -> [Category] {
        return [
            Category(title: "SHIRTS", imageName: "shirts.png"),
            Category(title: "HOODIES", imageName: "hoodies.png"),
            Category(title: "HATS", imageName: "hats.png"),
            Category(title: "DIGITAL", imageName: "digital.png")
        ];
    }
}
