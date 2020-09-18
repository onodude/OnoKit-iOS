//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class CommonButton: UIButton {

    // MARK: - Basic Buttons

    convenience init(superview: UIView) {

        self.init(type: .custom)
        self.frame = .zero
        self.backgroundColor = .clear

        superview.addSubview(self)

    }

    convenience init(superview: UIView, action: Selector, target: Any) {

        self.init(action: action, target: target)

        superview.addSubview(self)
    }

    // MARK: - Image Buttons

    convenience init(imageName: String, bgColor: UIColor, corner: CGFloat, superview: UIView, action: Selector, target: Any) {

        self.init(image: UIImage(named: imageName)!, action: action, target: target)

        self.backgroundColor = bgColor

        self.setCornerRadius(corner: corner)

        superview.addSubview(self)

    }

    convenience init(imageName: String, superview: UIView, action: Selector, target: Any) {

        self.init(image: UIImage(named: imageName)!, action: action, target: target)

        superview.addSubview(self)

    }

    convenience init(imageName: String, pressedImageName: String, superview: UIView, action: Selector, target: Any) {

        self.init(image: UIImage(named: imageName)!, pressedImage: UIImage(named: pressedImageName)!, action: action, target: target)

        superview.addSubview(self)

    }

    convenience init(title: String, titleColor: UIColor, font: UIFont, superview: UIView, action: Selector, target: Any) {

        self.init(title: title, titleColor: titleColor, font: font, bgColor: .clear, corner: 0, action: action, target: target)

        superview.addSubview(self)

    }

    convenience init(title: String, titleColor: UIColor, font: UIFont, bgColor: UIColor, corner: CGFloat, superview: UIView, action: Selector, target: Any) {

        self.init(title: title, titleColor: titleColor, font: font, bgColor: bgColor, corner: corner, action: action, target: target)

        superview.addSubview(self)

    }

    convenience init(baseText: String, baseFont: UIFont, baseColor: UIColor, otherText: String, otherFont: UIFont, otherColor: UIColor, height: CGFloat, bgColor: UIColor, superview: UIView, action: Selector, target: Any) {

        let commonCorner: CGFloat = height/2.0

        self.init(title: "", titleColor: baseColor, font: baseFont, bgColor: bgColor, corner: commonCorner, action: action, target: target)

        superview.addSubview(self)

        self.setCustomTitleForAllStates(baseText: baseText, baseFont: baseFont, baseColor: baseColor, otherText: otherText, otherFont: otherFont, otherColor: otherColor)

    }

}
