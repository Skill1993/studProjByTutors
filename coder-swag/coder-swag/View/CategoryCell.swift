//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Никита Журавлев on 19.11.2017.
//  Copyright © 2017 Никита Журавлев. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
}
