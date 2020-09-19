//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonLabel: UILabel {

    public static func create(_ superview: UIView) -> CommonLabel {
        return CommonLabel().superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    @discardableResult
    public func frame(_ frame: CGRect) -> CommonLabel {
        self.frame = frame
        return self
    }

    @discardableResult
    public func superview(_ superview: UIView) -> CommonLabel {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func bgColor(_ bgColor: UIColor) -> CommonLabel {
        self.backgroundColor = bgColor
        return self
    }

    @discardableResult
    public func corner(_ corner: CGFloat) -> CommonLabel {
        self.setCornerRadius(corner: corner)
        return self
    }

    @discardableResult
    public func border(_ color: UIColor, _ width: CGFloat) -> CommonLabel {
        self.addBorder(width: width, color: color)
        return self
    }

    @discardableResult
    public func textColor(_ textColor: UIColor) -> CommonLabel {
        self.textColor = textColor
        return self
    }

    @discardableResult
    public func font(_ font: UIFont) -> CommonLabel {
        self.font = font
        return self
    }

    @discardableResult
    public func alignment(_ alignment: NSTextAlignment) -> CommonLabel {
        self.textAlignment = alignment
        return self
    }

    @discardableResult
    public func padding(_ insets: UIEdgeInsets) -> CommonLabel {
        super.drawText(in: self.frame.inset(by: insets))
        self.setNeedsLayout()
        return self
    }

    @discardableResult
    public func text(_ text: String) -> CommonLabel {
        self.text = text
        return self
    }

    @discardableResult
    public func text(_ title: NSAttributedString) -> CommonLabel {
        self.attributedText = attributedText
        return self
    }

    @discardableResult
    public func multiLine(_ multiLine: Bool) -> CommonLabel {
        self.numberOfLines = multiLine ? 0 : 1
        return self
    }

    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> CommonLabel {
        self.lineBreakMode = lineBreakMode
        return self
    }

    // MARK: - Configuration

    open override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        super.drawText(in: rect.inset(by: insets))
    }

}
