//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public extension UITextField {

    convenience init(text: String, font: UIFont, color: UIColor, superview: UIView) {

        self.init(frame: .zero)
        self.backgroundColor = .clear

        self.placeholder = text
        self.textColor = color
        self.font = font

        self.autocorrectionType = .no
        self.autocapitalizationType = .sentences

        superview.addSubview(self)

    }

}
