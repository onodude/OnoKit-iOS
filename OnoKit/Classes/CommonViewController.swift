//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public protocol CommonViewControllerProtocol {

    func initView()
    func initViewModel()

}

open class CommonViewController: UIViewController {

    open override func viewDidLoad() {

        super.viewDidLoad()

        initView()
        initViewModel()

    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let viewName = String(describing: type(of: self))
        print(String(format: "%@", viewName))

    }

    private func initView() { }

    private func initViewModel() { }

}
