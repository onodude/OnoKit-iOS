//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonView: UIView {

    public static func create(_ superview: UIView) -> CommonView {
        return CommonView().superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    @discardableResult
    public func frame(_ frame: CGRect) -> CommonView {
        self.frame = frame
        return self
    }

    @discardableResult
    public func superview(_ superview: UIView) -> CommonView {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func bgColor(_ bgColor: UIColor) -> CommonView {
        self.backgroundColor = bgColor
        return self
    }

    @discardableResult
    public func corner(_ corner: CGFloat) -> CommonView {
        self.setCornerRadius(corner: corner)
        return self
    }

    @discardableResult
    public func border(_ color: UIColor, _ width: CGFloat) -> CommonView {
        self.addBorder(width: width, color: color)
        return self
    }

}
