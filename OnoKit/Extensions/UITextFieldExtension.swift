//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public extension UITextField {

    // MARK: - Common Creators

    convenience init(_ superview: UIView) {

        self.init()
        self.frame = .zero
        self.backgroundColor = .clear

        superview.addSubview(self)

    }

}
