//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public extension UIScrollView {

    convenience init(_ superview: UIView) {

        self.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.alwaysBounceVertical = true
        self.delegate = self as? UIScrollViewDelegate

        self.keyboardDismissMode = .interactive

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.contentInsetAdjustmentBehavior = .never

        superview.addSubview(self)

    }

}
