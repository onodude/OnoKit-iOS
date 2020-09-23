//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonNavigationManager: NSObject {

    open var window: UIWindow!

    public static func show(from: UIViewController, to: UIViewController) {
        to.hidesBottomBarWhenPushed = true
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.fade
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.pushViewController(to, animated: false)
    }

    public static func dismiss(from: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.fade
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.popViewController(animated: false)
    }

}
