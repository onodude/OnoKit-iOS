//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class BaseCollectionViewCell: UICollectionViewCell {

    open var cellIdentifier: String = ""

    // MARK: Objects

    var viewMain: UIView!
    var indexPath: IndexPath!
    var controller: UIViewController!
    var collectionView: UICollectionView!

    // MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        viewMain = CommonView(superview: contentView)

        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    public func set(indexPath: IndexPath, collectionView: UICollectionView, viewController: UIViewController) {
        self.indexPath = indexPath
        self.collectionView = collectionView
        self.controller = viewController
    }

}
