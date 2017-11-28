//
//  ProductCollectionViewCell.swift
//  app-coder-swag
//
//  Created by Andreas Landerer on 27.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func update(product: Product) {
        self.productImage.image = UIImage(named: product.imageName)
        self.productTitle.text = product.title
        self.productPrice.text = product.price
    }
}
