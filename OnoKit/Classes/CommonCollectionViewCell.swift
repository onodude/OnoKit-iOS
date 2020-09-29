//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonCollectionViewCell: UICollectionViewCell {

    // MARK: Objects

    open var indexPath: IndexPath!
    open var viewMain: UIView!

    // MARK: Initializers

    public override init(frame: CGRect) {
        super.init(frame: frame)

        viewMain = CommonView(contentView)

        viewMain.snp.makeConstraints { (view) in
            view.left.top.right.bottom.equalToSuperview()
        }

    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

}
