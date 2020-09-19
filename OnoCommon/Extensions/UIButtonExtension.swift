//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension UIButton {

    // MARK: Common Editors

    func setBackgroundImageForAllStates(image: UIImage) {

        self.setBackgroundImage(image, for: .normal)
        self.setBackgroundImage(image, for: .selected)
        self.setBackgroundImage(image, for: .highlighted)

    }

    func setImageForAllStates(image: UIImage) {

        self.setImage(image, for: .normal)
        self.setImage(image, for: .selected)
        self.setImage(image, for: .highlighted)

    }

    func setTitleForAllStates(title: String) {

        self.setTitle(title, for: .normal)
        self.setTitle(title, for: .selected)
        self.setTitle(title, for: .highlighted)

    }

    func setTitleFontForAllStates(font: UIFont) {

        self.titleLabel?.font = font

    }

    func setTitleColorForAllStates(color: UIColor) {

        self.setTitleColor(color, for: .normal)
        self.setTitleColor(color, for: .selected)
        self.setTitleColor(color, for: .highlighted)

    }

    func setCustomTitleForAllStates(baseText: String, baseFont: UIFont, baseColor: UIColor, otherText: String, otherFont: UIFont, otherColor: UIColor) {

        let customText = NSMutableAttributedString(string: baseText)

        let otherRange = (baseText as NSString).range(of: otherText)
        let baseRange = (baseText as NSString).range(of: baseText)
        //  let baseRange = NSRange(location: 0, length: otherRange.location)

        customText.setAttributes([NSAttributedString.Key.font: baseFont, NSAttributedString.Key.foregroundColor: baseColor], range: baseRange)

        customText.setAttributes([NSAttributedString.Key.font: otherFont, NSAttributedString.Key.foregroundColor: otherColor], range: otherRange)

        self.setAttributedTitle(customText, for: .normal)
        self.setAttributedTitle(customText, for: .highlighted)
        self.setAttributedTitle(customText, for: .selected)

    }

}
