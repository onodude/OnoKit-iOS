//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import UserNotifications

public protocol CommonApplicationManagerProtocol {
    func start()
    func loadDeviceInfo()
}

open class CommonApplicationManager: NSObject, CommonApplicationManagerProtocol {

    open var window: UIWindow!

    open func start() {

        loadDeviceInfo()

        /*

        ConfigManager.shared.configureLibraries()

        AppDelegate.standard.window = window
        NavigationManager.shared.window = self.window

        if BackendManager.isLoggedIn() {
            NavigationManager.shared.loggedInLaunchSequence(animated: false)
        } else {
            NavigationManager.shared.notLoggedInLaunchSequence(animated: false)
        }

        */

    }

    open func loadDeviceInfo() {

        let kScreenHeight: CGFloat = UIScreen.main.bounds.height
        let kScreenWidth: CGFloat = UIScreen.main.bounds.width

        kStatusBarHeight = window.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        kBottomBarHeight = window.safeAreaInsets.bottom

        CommonLogManager.shared.log(String(format: "screenHeight: %0.0f", kScreenHeight) )
        CommonLogManager.shared.log(String(format: "screenWidth: %0.0f", kScreenWidth) )

    }

}
