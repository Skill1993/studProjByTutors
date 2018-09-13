//
//  Category.swift
//  coder-swag
//
//  Created by Никита Журавлев on 19.11.2017.
//  Copyright © 2017 Никита Журавлев. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init (title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
