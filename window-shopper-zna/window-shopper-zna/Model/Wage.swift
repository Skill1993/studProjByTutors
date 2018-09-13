//
//  Wage.swift
//  window-shopper-zna
//
//  Created by Никита Журавлев on 13.11.2017.
//  Copyright © 2017 Никита Журавлев. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
