//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public protocol CommonNavigationManagerProtocol {

    func loggedInLaunchSequence(animated: Bool)
    func notLoggedInLaunchSequence(animated: Bool)

}

open class CommonNavigationManager: NSObject {

    static let shared = CommonNavigationManager()

    open var window: UIWindow!

    open func show(from: UIViewController, to: UIViewController) {
        to.hidesBottomBarWhenPushed = true
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.fade
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.pushViewController(to, animated: false)
    }

    open func dismiss(from: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.fade
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.popViewController(animated: false)
    }

    open func push(from: UIViewController, to: UIViewController, direction: CATransitionSubtype) {
        to.hidesBottomBarWhenPushed = true
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.moveIn
        transition.subtype = direction
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.pushViewController(to, animated: false)
    }

    open func pop(from: UIViewController, direction: CATransitionSubtype) {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.moveIn
        transition.subtype = direction
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.popViewController(animated: false)
    }

}
