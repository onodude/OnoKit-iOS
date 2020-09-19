//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonTableViewCell: UITableViewCell {

    // MARK: - Objects

    open var viewMain: UIView!
    open var indexPath: IndexPath!
    open var controller: UIViewController!
    open var tableView: UITableView!

    // MARK: - Initializers

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)

        viewMain = CommonView.create(contentView)
        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

    public required init(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)!

    }

    public func set(indexPath: IndexPath, tableView: UITableView, viewController: UIViewController) {
        self.indexPath = indexPath
        self.tableView = tableView
        self.controller = viewController
    }

}
