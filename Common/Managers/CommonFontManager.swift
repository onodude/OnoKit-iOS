//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public class CommonFontManager {

    // MARK: - Font Names

    public static var fontNameRegular = "OpenSans-Regular"
    public static var fontNameMedium = "OpenSans-Medium"
    public static var fontNameBold = "OpenSans-Bold"
    public static var fontNameSemiBold = "OpenSans-Semibold"

    // MARK: - Font Creators

    public static func fontRegular(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameRegular, size: size)!
    }

    public static func fontMedium(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameMedium, size: size)!
    }

    public static func fontBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameBold, size: size)!
    }

    public static func fontSemiBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: fontNameSemiBold, size: size)!
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
