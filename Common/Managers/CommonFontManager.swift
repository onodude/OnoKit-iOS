//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

open class CommonFontManager {

    // MARK: - Font Names

    static var fontNameRegular = "HelveticaNeue-Regular"
    static var fontNameMedium = "HelveticaNeue-Medium"
    static var fontNameBold = "HelveticaNeue-Bold"
    static var fontNameLight = "HelveticaNeue-Light"

    // MARK: - Font Creators

    static func fontLight(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameLight, size: size)!
    }

    static func fontRegular(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameRegular, size: size)!
    }

    static func fontMedium(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameMedium, size: size)!
    }

    static func fontBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameBold, size: size)!
    }

    // MARK: - Helpers

    public static func printFonts() {
        let fontFamilyNames = UIFont.familyNames
        for familyName in fontFamilyNames {
            print("------------------------------")
            print("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font Names = [\(names)]")
        }
    }

}
