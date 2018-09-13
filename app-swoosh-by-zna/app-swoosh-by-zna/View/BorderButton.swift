//
//  BorderButton.swift
//  app-swoosh-by-zna
//
//  Created by Никита Журавлев on 31.10.2017.
//  Copyright © 2017 Никита Журавлев. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
