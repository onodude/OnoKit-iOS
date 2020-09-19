//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonCollectionReusableView: UICollectionReusableView {

    // MARK: Objects

    open var viewMain: UIView!
    open var indexPath: IndexPath!
    open var controller: UIViewController!
    open var collectionView: UICollectionView!

    // MARK: Initializers

    public override init(frame: CGRect) {
        super.init(frame: frame)

        viewMain = CommonView.create(superview: self)

        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

}
