//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

extension UICollectionView {

    // MARK: - Common Creators

    convenience init(_ superview: UIView, _ direction: UICollectionView.ScrollDirection? = nil, _ handler: CommonCollectionViewHandler) {

        let layout = UICollectionViewFlowLayout()

        if let direction = direction {
            layout.scrollDirection = direction
        }

        self.init(frame: .zero, collectionViewLayout: layout)

        self.backgroundColor = .clear

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false

        self.isPagingEnabled = true
        self.bounces = false

        self.dataSource = handler
        self.delegate = handler

        superview.addSubview(self)

    }

}
