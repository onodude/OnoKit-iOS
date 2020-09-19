//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonCollectionView: UICollectionView {

    public static func create(_ superview: UIView, _ direction: UICollectionView.ScrollDirection? = nil, _ handler: CommonCollectionViewHandler) -> CommonCollectionView {
        return CommonCollectionView(superview, direction, handler).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    @discardableResult
    public func frame(_ frame: CGRect) -> CommonCollectionView {
        self.frame = frame
        return self
    }

    @discardableResult
    public func superview(_ superview: UIView) -> CommonCollectionView {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func bgColor(_ bgColor: UIColor) -> CommonCollectionView {
        self.backgroundColor = bgColor
        return self
    }

    @discardableResult
    public func identifiers(_ identifiers: [String]) -> CommonCollectionView {
        for identifier in identifiers {
            if let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String {
                if let anyClass: AnyClass = NSClassFromString("\(namespace).\(identifier)") {
                    self.register(anyClass, forCellWithReuseIdentifier: identifier)
                }
            }
        }
        return self
    }

}
