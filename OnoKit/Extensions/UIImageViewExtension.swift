//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension UIImageView {

    // MARK: - Common Creators

    convenience init(_ superview: UIView) {

        self.init()
        self.frame = .zero
        self.backgroundColor = .clear
        self.clipsToBounds = true

        superview.addSubview(self)

    }

}
