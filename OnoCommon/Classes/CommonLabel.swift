//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonLabel: UILabel {

    static func create(_ superview: UIView) -> CommonLabel {
        return CommonLabel().superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    func frame(_ frame: CGRect) -> CommonLabel {
        self.frame = frame
        return self
    }

    func superview(_ superview: UIView) -> CommonLabel {
        superview.addSubview(self)
        return self
    }

    func bgColor(_ bgColor: UIColor) -> CommonLabel {
        self.backgroundColor = bgColor
        return self
    }

    func corner(_ corner: CGFloat) -> CommonLabel {
        self.setCornerRadius(corner: corner)
        return self
    }

    func textColor(_ textColor: UIColor) -> CommonLabel {
        self.textColor = textColor
        return self
    }

    func font(_ font: UIFont) -> CommonLabel {
        self.font = font
        return self
    }

    func alignment(_ alignment: NSTextAlignment) -> CommonLabel {
        self.textAlignment = alignment
        return self
    }

    func padding(_ insets: UIEdgeInsets) -> CommonLabel {
        super.drawText(in: self.frame.inset(by: insets))
        self.setNeedsLayout()
        return self
    }

    // MARK: - Configuration

    open override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        super.drawText(in: rect.inset(by: insets))
    }

}
