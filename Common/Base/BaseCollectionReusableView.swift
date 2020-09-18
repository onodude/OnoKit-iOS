//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class BaseCollectionReusableView: UICollectionReusableView {

    // MARK: Objects

    var viewMain: UIView!
    var indexPath: IndexPath!
    var controller: UIViewController!
    var collectionView: UICollectionView!

    // MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        viewMain = CommonView.init(superview: self)

        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

}
