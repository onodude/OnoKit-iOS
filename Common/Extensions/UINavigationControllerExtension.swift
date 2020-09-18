//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

extension UINavigationController {

    func getControllerWithClass(_ anyClass: AnyClass) -> UIViewController {

        for vc in self.viewControllers {

            if vc.isKind(of: anyClass) {

                return vc

            }

        }

        return UIViewController()

    }

}
