//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

open class CommonFontManager {

    // MARK: - Font Names

    public static var fontNameRegular = "HelveticaNeue-Regular"
    public static var fontNameMedium = "HelveticaNeue-Medium"
    public static var fontNameBold = "HelveticaNeue-Bold"
    public static var fontNameLight = "HelveticaNeue-Light"

    // MARK: - Font Creators

    public static func fontLight(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameLight, size: size)!
    }

    public static func fontRegular(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameRegular, size: size)!
    }

    public static func fontMedium(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameMedium, size: size)!
    }

    public static func fontBold(_ size: CGFloat) -> UIFont {
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
