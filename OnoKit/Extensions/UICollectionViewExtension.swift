//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public extension UICollectionView {

    // MARK: - Common Creators

    convenience init(_ superview: UIView, _ direction: UICollectionView.ScrollDirection, _ handler: CommonCollectionViewHandler, _ identifiers: [String]) {

        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = direction

        self.init(frame: .zero, collectionViewLayout: layout)

        self.backgroundColor = .clear

        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false

        self.isPagingEnabled = true
        self.bounces = false

        self.dataSource = handler
        self.delegate = handler

        for identifier in identifiers {
            if let projectName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String {
                let namespace = projectName.replacingOccurrences(of: "-", with: "_")
                if let anyClass: AnyClass = NSClassFromString("\(namespace).\(identifier)") {
                    self.register(anyClass, forCellWithReuseIdentifier: identifier)
                }
            }
        }

        superview.addSubview(self)

    }

}
