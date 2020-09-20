//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

extension UICollectionView {

    convenience init(superview: UIView, handler: Any, direction: UICollectionView.ScrollDirection, identifiers: [String]) {

        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = direction

        self.init(frame: .zero, collectionViewLayout: layout)

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false

        self.dataSource = handler as? UICollectionViewDataSource
        self.delegate = handler as? UICollectionViewDelegate

        self.backgroundColor = .clear

        self.isPagingEnabled = true
        self.bounces = false

        for identifier in identifiers {
            if let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String {
                if let anyClass: AnyClass = NSClassFromString("\(namespace).\(identifier)") {
                    self.register(anyClass, forCellWithReuseIdentifier: identifier)
                }
            }
        }

        superview.addSubview(self)

    }

}
