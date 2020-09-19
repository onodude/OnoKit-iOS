//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import SnapKit

protocol CommonViewControllerProtocol {

    func loadMainView()
    func buildMainView()
    func bindViewModel()

}

open class CommonViewController: UIViewController, CommonViewControllerProtocol {

    // MARK: - Objects

    open var viewMain: CommonView!

    // MARK: - Load

    open func loadMainView() { }

    // MARK: - Build

    open func bindViewModel() { }

    open func buildMainView() {

        self.view.window?.layer.backgroundColor = UIColor.clear.cgColor

        viewMain = CommonView.create(superview: self.view, bgColor: .white)

        viewMain.snp.makeConstraints { (view) in
            view.left.right.top.bottom.equalTo(self.view)
        }

    }

}
