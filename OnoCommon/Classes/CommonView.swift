//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonView: UIView {

    // MARK: - Initializers

    public convenience init(superview: UIView) {

        self.init(frame: .zero)
        self.backgroundColor = .clear

        superview.addSubview(self)

    }

    public convenience init(backgroundColor: UIColor, superview: UIView) {

        self.init(frame: .zero)
        self.backgroundColor = backgroundColor

        superview.addSubview(self)

    }

}
