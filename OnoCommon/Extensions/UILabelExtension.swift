//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension UILabel {

    // MARK: - Common Creators

    convenience init(_ superview: UIView) {

        self.init()
        self.frame = .zero
        self.backgroundColor = .clear

        superview.addSubview(self)

    }

    // MARK: - Common Editors

    func setCustomText(text: String, font: UIFont, color: UIColor) {

        let customText = NSMutableAttributedString(string: text)

        let currentText = self.text! as NSString

        let range = currentText.range(of: text)

        customText.setAttributes([NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: color], range: range)

        self.attributedText = customText

    }

    func setCustomText(baseText: String, baseFont: UIFont, baseColor: UIColor, otherText: String, otherFont: UIFont, otherColor: UIColor) {

        let customText = NSMutableAttributedString(string: baseText)

        let otherRange = (baseText as NSString).range(of: otherText)
        let baseRange = (baseText as NSString).range(of: baseText)

        customText.setAttributes([NSAttributedString.Key.font: baseFont, NSAttributedString.Key.foregroundColor: baseColor], range: baseRange)

        customText.setAttributes([NSAttributedString.Key.font: otherFont, NSAttributedString.Key.foregroundColor: otherColor], range: otherRange)

        self.attributedText = customText

    }

    func setCustomText(baseText: String, baseFont: UIFont, baseColor: UIColor, otherTextArray: [String], otherFont: UIFont, otherColor: UIColor) {

        let customText = NSMutableAttributedString(string: baseText)

        let baseRange = (baseText as NSString).range(of: baseText)

        customText.setAttributes([NSAttributedString.Key.font: baseFont, NSAttributedString.Key.foregroundColor: baseColor], range: baseRange)

        for alpha in 0..<otherTextArray.count {

            let text: String = otherTextArray[alpha]
            let otherRange = (baseText as NSString).range(of: text)

            customText.setAttributes([NSAttributedString.Key.font: otherFont, NSAttributedString.Key.foregroundColor: otherColor], range: otherRange)

        }

        self.attributedText = customText

    }

}
