//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

class ColorManager {

    // MARK: - Hex Codes

    static var colorWhiteCode = "ffffff"
    static var colorBlackCode = "000000"
    static var colorGreyCode = "848484"
    static var colorGreyDarkCode = "212121"
    static var colorGreyLightCode = "F0F0F0"
    static var colorGreyLightExtraCode = "F7F7F7"
    static var colorBlueCode = "1E22AA"

    // MARK: - Color Creators

    static func colorWhite() -> UIColor {
        return UIColor(hexString: colorWhiteCode)
    }

    static func colorBlack() -> UIColor {
        return UIColor(hexString: colorBlackCode)
    }

    static func colorGrey() -> UIColor {
        return UIColor(hexString: colorGreyCode)
    }

    static func colorGreyDark() -> UIColor {
        return UIColor(hexString: colorGreyDarkCode)
    }

    static func colorGreyLightExtra() -> UIColor {
        return UIColor(hexString: colorGreyLightExtraCode)
    }

    static func colorGreyLight() -> UIColor {
        return UIColor(hexString: colorGreyLightCode)
    }

    static func colorBlue() -> UIColor {
        return UIColor(hexString: colorBlueCode)
    }

}
