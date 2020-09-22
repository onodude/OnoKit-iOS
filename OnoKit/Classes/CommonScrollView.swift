//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonScrollView: UIScrollView {

    // MARK: - Setters

    @discardableResult
    public func frame(_ frame: CGRect) -> CommonScrollView {
        self.frame = frame
        return self
    }

    @discardableResult
    public func superview(_ superview: UIView) -> CommonScrollView {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func bgColor(_ bgColor: UIColor) -> CommonScrollView {
        self.backgroundColor = bgColor
        return self
    }

}
