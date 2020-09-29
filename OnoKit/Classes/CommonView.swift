//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonView: UIView {

    open var viewMain: CommonView!

    open func build(_ superview: UIView) {

        viewMain = CommonView(superview)
            .bgColor(.white)

        viewMain.snp.makeConstraints { (view) in
            view.left.top.right.bottom.equalToSuperview()
        }

    }

    // MARK: - Common Creators

    public convenience init(_ superview: UIView) {

        self.init()
        self.frame = .zero
        self.backgroundColor = .clear

        superview.addSubview(self)

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
