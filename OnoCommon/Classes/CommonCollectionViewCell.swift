//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonCollectionViewCell: UICollectionViewCell {

    // MARK: Objects

    var indexPath: IndexPath!
    var viewMain: UIView!

    var viewModel: CommonViewModelProtocol!
    var viewController: CommonViewControllerProtocol!

    // MARK: Initializers

    public override init(frame: CGRect) {
        super.init(frame: frame)

        viewMain = CommonView.create(contentView)

        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    func set(indexPath: IndexPath, viewModel: CommonViewModelProtocol, viewController: CommonViewControllerProtocol) {
        self.indexPath = indexPath
        self.viewModel = viewModel
        self.viewController = viewController
    }

}
