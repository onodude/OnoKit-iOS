//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public class CommonColorManager {

    // MARK: - Hex Codes

    public static var colorWhiteCode = "ffffff"
    public static var colorBlackCode = "000000"

    // MARK: - Color Creators

    public static func colorWhite() -> UIColor {
        return UIColor(hexString: colorWhiteCode)
    }

    public static func colorBlack() -> UIColor {
        return UIColor(hexString: colorBlackCode)
    }

}
