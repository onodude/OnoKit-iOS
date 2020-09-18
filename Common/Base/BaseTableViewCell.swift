//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    // MARK: - Objects

    var viewMain: UIView!
    var indexPath: IndexPath!
    var controller: UIViewController!
    var tableView: UITableView!

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)

        viewMain = CommonView(superview: contentView)

        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

    required init(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)!

    }

    func set(indexPath: IndexPath, tableView: UITableView, viewController: UIViewController) {
        self.indexPath = indexPath
        self.tableView = tableView
        self.controller = viewController
    }

}
