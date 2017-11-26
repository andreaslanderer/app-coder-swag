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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
