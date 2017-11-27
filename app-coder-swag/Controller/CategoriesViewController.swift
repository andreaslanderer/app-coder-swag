//
//  ViewController.swift
//  app-coder-swag
//
//  Created by Andreas Landerer on 26.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.categoryTable.dataSource = self
        self.categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CategoryService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCellTableViewCell {
            let category = CategoryService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        return CategoryCellTableViewCell()
    }
}

