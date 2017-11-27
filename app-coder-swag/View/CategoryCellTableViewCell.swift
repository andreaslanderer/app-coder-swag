//
//  CategoryCellTableViewCell.swift
//  app-coder-swag
//
//  Created by Andreas Landerer on 26.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import UIKit

class CategoryCellTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateViews(category: Category) {
        self.categoryImage.image = UIImage(named: category.imageName)
        self.categoryLabel.text = category.title
    }
}
