//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonScrollView: UIScrollView {

    public convenience init(superview: UIView) {

        self.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.alwaysBounceVertical = true
        self.delegate = self as? UIScrollViewDelegate

        self.keyboardDismissMode = .interactive

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false

        superview.addSubview(self)

    }

    public convenience init(superview: UIView, controller: UIViewController) {

        self.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.alwaysBounceVertical = true
        self.delegate = self as? UIScrollViewDelegate

        self.keyboardDismissMode = .interactive

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false

        if #available(iOS 11.0, *) {
            self.contentInsetAdjustmentBehavior = .never
        } else {
            controller.automaticallyAdjustsScrollViewInsets = false
        }

        superview.addSubview(self)

    }

}
