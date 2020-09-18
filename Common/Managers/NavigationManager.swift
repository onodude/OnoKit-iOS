//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class NavigationManager {

    var window: UIWindow!
    var navigationController: NavigationController = NavigationController()
    var tabBarController: TabBarController = TabBarController()
    var initialViewController: UIViewController!

    static let shared = NavigationManager()

    func loggedInLaunchSequence(animated: Bool) {

        LogManager.log(string: String("loggedInLaunchSequence") )

        self.navigationController = NavigationController()

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

    func notLoggedInLaunchSequence(animated: Bool) {

        LogManager.log(string: String("notLoggedInLaunchSequence") )

        self.tabBarController = TabBarController()

        let vc = initialViewController!
        vc.hidesBottomBarWhenPushed = true

        self.navigationController = NavigationController(rootViewController: vc)
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

    static func show(from: UIViewController, to: UIViewController) {
        to.hidesBottomBarWhenPushed = true
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.fade
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.pushViewController(to, animated: false)
    }

    static func dismiss(from: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.fade
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.popViewController(animated: false)
    }

    static func push(from: UIViewController, to: UIViewController, direction: CATransitionSubtype) {
        to.hidesBottomBarWhenPushed = true
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.moveIn
        transition.subtype = direction
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.pushViewController(to, animated: false)
    }

    static func pop(from: UIViewController, direction: CATransitionSubtype) {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = CATransitionType.moveIn
        transition.subtype = direction
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        from.view.window!.layer.add(transition, forKey: kCATransition)
        from.navigationController?.popViewController(animated: false)
    }

}
