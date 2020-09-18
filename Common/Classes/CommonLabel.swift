//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class CommonLabel: UILabel {

    // MARK: - Initializers

    convenience init(text: String, titleColor: UIColor, font: UIFont, bgColor: UIColor, alignment: NSTextAlignment, superview: UIView) {

        self.init(text: text, titleColor: titleColor, font: font, bgColor: bgColor, alignment: alignment)

        superview.addSubview(self)

    }

    convenience init(bgColor: UIColor, alignment: NSTextAlignment, superview: UIView) {

        self.init(bgColor: bgColor, alignment: alignment)

        superview.addSubview(self)

    }

    // MARK: - Configuration

    func setPadding(_ insets: UIEdgeInsets) {

        super.drawText(in: self.frame.inset(by: insets))
        self.setNeedsLayout()

    }

    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        super.drawText(in: rect.inset(by: insets))
    }

    func setAttributes(font: UIFont, color: UIColor) {

        self.font = font
        self.textColor = color

    }

}
