//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonView: UIView {

    static func create(_ superview: UIView) -> CommonView {
        return CommonView().superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    func frame(_ frame: CGRect) -> CommonView {
        self.frame = frame
        return self
    }

    func superview(_ superview: UIView) -> CommonView {
        superview.addSubview(self)
        return self
    }

    func bgColor(_ bgColor: UIColor) -> CommonView {
        self.backgroundColor = bgColor
        return self
    }

}
