//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonCollectionViewCell: UICollectionViewCell {

    open var cellIdentifier: String = ""

    // MARK: Objects

    open var viewMain: UIView!
    open var indexPath: IndexPath!
    open var controller: UIViewController!
    open var collectionView: UICollectionView!

    // MARK: Initializers

    public override init(frame: CGRect) {
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
