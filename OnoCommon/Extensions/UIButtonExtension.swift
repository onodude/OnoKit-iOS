//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension UIButton {

    // MARK: Common Creators

    convenience init(action: Selector, target: Any) {

        self.init(type: .custom)
        self.frame = .zero
        self.backgroundColor = .clear

        self.addTarget(target, action: action, for: .touchUpInside)

    }

    convenience init(image: UIImage, pressedImage: UIImage, action: Selector, target: Any) {

        self.init(type: .custom)
        self.frame = .zero
        self.backgroundColor = .clear

        self.setImage(image, for: .normal)
        self.setImage(pressedImage, for: .selected)
        self.setImage(pressedImage, for: .highlighted)

        self.addTarget(target, action: action, for: .touchUpInside)

    }

    convenience init(image: UIImage, action: Selector, target: Any) {

        self.init(type: .custom)
        self.frame = .zero
        self.backgroundColor = .clear

        self.setImage(image, for: .normal)
        self.setImage(image, for: .selected)
        self.setImage(image, for: .highlighted)

        self.addTarget(target, action: action, for: .touchUpInside)

    }

    convenience init(title: String, titleColor: UIColor, font: UIFont, bgImage: UIImage, corner: CGFloat, action: Selector, target: Any) {

        self.init(type: .custom)
        self.frame = .zero

        self.setBackgroundImage(bgImage, for: .normal)
        self.setBackgroundImage(bgImage, for: .selected)
        self.setBackgroundImage(bgImage, for: .highlighted)

        self.layer.cornerRadius = corner
        self.layer.masksToBounds = true

        self.setTitle(title, for: .normal)
        self.setTitle(title, for: .selected)
        self.setTitle(title, for: .highlighted)

        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor, for: .highlighted)

        self.titleLabel?.font = font

        self.contentHorizontalAlignment = .center
        self.contentVerticalAlignment = .center

        self.titleEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)

        self.addTarget(target, action: action, for: .touchUpInside)

    }

    convenience init(title: String, titleColor: UIColor, font: UIFont, bgColor: UIColor, corner: CGFloat, action: Selector, target: Any) {

        self.init(type: .custom)
        self.frame = .zero
        self.backgroundColor = bgColor

        self.layer.cornerRadius = corner
        self.layer.masksToBounds = true

        self.setTitle(title, for: .normal)
        self.setTitle(title, for: .selected)
        self.setTitle(title, for: .highlighted)

        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor, for: .highlighted)

        self.titleLabel?.font = font

        self.contentHorizontalAlignment = .center
        self.contentVerticalAlignment = .center

        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        self.addTarget(target, action: action, for: .touchUpInside)

    }

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
