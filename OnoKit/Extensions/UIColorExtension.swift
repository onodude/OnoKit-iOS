//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension UIColor {

    convenience init(_ hexString: String, _ alpha: CGFloat = 1.0) {

        var hexColor = hexString
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            hexColor = String(hexString[start...])
        }

        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0

        scanner.scanHexInt64(&hexNumber)

        let mask = 0x000000FF
        let r = Int(hexNumber >> 16) & mask
        let g = Int(hexNumber >> 8) & mask
        let b = Int(hexNumber) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)

    }

}
