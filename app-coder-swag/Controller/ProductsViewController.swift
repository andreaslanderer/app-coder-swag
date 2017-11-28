//
//  ProductsViewController.swift
//  app-coder-swag
//
//  Created by Andreas Landerer on 28.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    private (set) public var products = [Product]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.products.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCollectionViewCell {
            let product = self.products[indexPath.row]
            cell.update(product: product)
            return cell
        }
        return ProductCollectionViewCell()
    }
    
    func initProducts(forCategory category: Category) {
        self.products = ProductService.instance.getProducts(forCategory: category.title)
        self.navigationItem.title = category.title
    }
}
