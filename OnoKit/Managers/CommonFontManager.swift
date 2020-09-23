//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

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
