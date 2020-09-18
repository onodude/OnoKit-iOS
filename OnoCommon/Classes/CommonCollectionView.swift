//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonCollectionView: UICollectionView {

    public convenience init(backgroundColor: UIColor, superview: UIView, delegate: Any) {

        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

        self.init(frame: .zero, collectionViewLayout: layout)

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false

        self.dataSource = delegate as? UICollectionViewDataSource
        self.delegate = delegate as? UICollectionViewDelegate

        self.backgroundColor = backgroundColor

        superview.addSubview(self)

    }

    public convenience init(backgroundColor: UIColor, superview: UIView, handler: CommonCollectionViewHandler, direction: UICollectionView.ScrollDirection, identifiers: [String]) {

        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = direction

        self.init(frame: .zero, collectionViewLayout: layout)

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false

        self.dataSource = handler
        self.delegate = handler

        self.backgroundColor = backgroundColor

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
