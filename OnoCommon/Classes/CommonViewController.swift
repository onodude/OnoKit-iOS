//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

protocol CommonViewControllerProtocol: class { }

open class CommonViewController: UIViewController {

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let viewName = String(describing: type(of: self))
        print(String(format: "%@", viewName))

    }

}
