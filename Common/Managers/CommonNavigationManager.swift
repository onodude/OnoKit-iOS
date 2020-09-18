//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open  class CommonNavigationManager {

    open var window: UIWindow!
    open var navigationController: CommonNavigationController = CommonNavigationController()
    open var tabBarController: CommonTabBarController = CommonTabBarController()
    open var initialViewController: UIViewController!

    public static let shared = CommonNavigationManager()

    open func loggedInLaunchSequence(animated: Bool) {

        CommonLogManager.log(string: String("loggedInLaunchSequence") )

        self.navigationController = CommonNavigationController()

        self.window!.rootViewController = self.tabBarController
        self.window!.makeKeyAndVisible()

        if animated {

            UIView.transition(with: self.window,
                              duration: 0.4,
                              options: .transitionCrossDissolve,
                              animations: nil,
                              completion: nil)

        }

    }

    open func notLoggedInLaunchSequence(animated: Bool) {

        CommonLogManager.log(string: String("notLoggedInLaunchSequence") )

        self.tabBarController = CommonTabBarController()

        let vc = initialViewController!
        vc.hidesBottomBarWhenPushed = true

        self.navigationController = CommonNavigationController(rootViewController: vc)
        self.navigationController.setNavigationBarHidden(true, animated: false)

        self.window!.rootViewController = self.navigationController
        self.window!.makeKeyAndVisible()

        if animated {

            UIView.transition(with: self.window,
                              duration: 0.4,
                              options: .transitionCrossDissolve,
                              animations: nil,
                              completion: nil)

        }

    }

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

    public static func push(from: UIViewController, to: UIViewController, direction: CATransitionSubtype) {
        to.hidesBottomBarWhenPushed = true
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.moveIn
        transition.subtype = direction
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.pushViewController(to, animated: false)
    }

    public static func pop(from: UIViewController, direction: CATransitionSubtype) {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.moveIn
        transition.subtype = direction
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.popViewController(animated: false)
    }

}
