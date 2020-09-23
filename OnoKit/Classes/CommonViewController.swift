//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonViewController: UIViewController {

    open override func viewDidLoad() {

        super.viewDidLoad()

        build()
        bind()

    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let viewName = String(describing: type(of: self))
        print(String(format: "%@", viewName))

    }

    open func build() { }

    open func bind() { }

}
