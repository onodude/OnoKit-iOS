//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

class FontManager {

    // MARK: - Font Names

    static var fontNameRegular = "ArcoPerpetuoPro-Regular"
    static var fontNameMedium = "ArcoPerpetuoPro-Medium"
    static var fontNameBold = "ArcoPerpetuoPro-Bold"
    static var fontNameSemiBold = "ArcoPerpetuoPro-Semibold"

    // MARK: - Font Creators

    static func fontRegular(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameRegular, size: size)!
    }

    static func fontMedium(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameMedium, size: size)!
    }

    static func fontBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameBold, size: size)!
    }

    static func fontSemiBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameSemiBold, size: size)!
    }

    // MARK: - Helpers

    static func printFonts() {
        let fontFamilyNames = UIFont.familyNames
        for familyName in fontFamilyNames {
            print("------------------------------")
            print("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font Names = [\(names)]")
        }
    }

}
