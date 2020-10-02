//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import SnapKit

open class CommonTableViewCell: UITableViewCell {

    // MARK: - Objects

    open var indexPath: IndexPath!
    open var viewMain: CommonView!

    // MARK: - Initializers

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)

        viewMain = CommonView(contentView)
        viewMain.snp.makeConstraints { (view) in
            view.left.top.right.bottom.equalToSuperview()
        }

    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

}
