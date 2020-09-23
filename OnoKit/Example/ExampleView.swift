//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class ExampleView: CommonView, CommonViewProtocol {

    // MARK: - Objects

    var viewMain: CommonView!
    var lblTitle: CommonLabel!
    var btnStart: CommonButton!

    // MARK: - Initializers

    func create(_ superview: UIView) {

        viewMain = CommonView(superview)
            .bgColor(.white)

        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

        lblTitle = CommonLabel(viewMain)
            .textColor(.black)
            .font(UIFont.boldSystemFont(ofSize: 20))
            .alignment(.center)

        lblTitle.snp.makeConstraints { (view) in
            view.center.equalToSuperview()
            view.width.greaterThanOrEqualTo(100)
            view.height.greaterThanOrEqualTo(30)
        }

        btnStart = CommonButton(viewMain)
            .titleColor(.white)
            .font(UIFont.systemFont(ofSize: 16))
            .bgColor(.black)
            .corner(25)

        btnStart.snp.makeConstraints { (view) in
            view.top.equalTo(lblTitle.snp.bottom).offset(40)
            view.centerX.equalToSuperview()
            view.width.greaterThanOrEqualTo(100)
            view.height.equalTo(50)
        }

    }

}
