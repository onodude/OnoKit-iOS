//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public protocol CommonFontManagerProtocol {

    static var fontNameRegular: String { get set }
    static var fontNameBold: String { get set }

    static func fontRegular(_ size: CGFloat) -> UIFont
    static func fontBold(_ size: CGFloat) -> UIFont

}

open class CommonFontManager: NSObject {

    // MARK: - Helpers

    public static func printFonts() {
        let fontFamilyNames = UIFont.familyNames
        for familyName in fontFamilyNames {
            CommonLogManager.log("------------------------------")
            CommonLogManager.log("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            CommonLogManager.log("Font Names = [\(names)]")
        }
    }

}
