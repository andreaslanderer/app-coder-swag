//
//  ProductService.swift
//  app-coder-swag
//
//  Created by Andreas Landerer on 28.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import Foundation

class ProductService {
    
    static let instance = ProductService()
    
    let digitalProducts = [Product]();
    
    let hats = [Product]();
    
    let hoodies = [Product]();
    
    let shirts = [
        Product(title: "Devslopes Logo Graphic 01", price: "19.95", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Graphic 02", price: "21.95", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Graphic 03", price: "15.95", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Graphic 04", price: "17.95", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Graphic 05", price: "29.95", imageName: "shirt05.png")
    ];
    
    
    func getProducts(forCategory category: String) -> [Product] {
        switch category {
        case "SHIRTS":
            return self.shirts
        case "HOODIES":
            return self.hoodies
        case "HATS":
            return self.hats
        case "DIGITAL":
            return self.digitalProducts
        default:
            return []
        }
    }
}
