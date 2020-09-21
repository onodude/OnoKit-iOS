//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonTableReusableView: UIView {

    // MARK: - Objects

    public static var defaultHeaderHeight: CGFloat = 60
    public static var defaultFooterHeight: CGFloat = 20

    open var indexPath: IndexPath!
    open var viewMain: UIView!

    // MARK: - Build

    open func buildMainView() {

        viewMain = CommonView(self)
        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

}
