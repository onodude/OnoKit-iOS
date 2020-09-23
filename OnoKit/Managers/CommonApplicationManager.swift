//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public protocol CommonApplicationManagerProtocol {

    func start()
    func loadDeviceInfo()

}

open class CommonApplicationManager: NSObject {

    open var window: UIWindow!

    /*

    func start() {

        ConfigManager.shared.configureLibraries()

        AppDelegate.standard.window = window
        NavigationManager.shared.window = self.window

        if BackendManager.isLoggedIn() {
            NavigationManager.shared.loggedInLaunchSequence(animated: false)
        } else {
            NavigationManager.shared.notLoggedInLaunchSequence(animated: false)
        }

    }

    func loadDeviceInfo() {

        let kScreenHeight: CGFloat = UIScreen.main.bounds.height
        let kScreenWidth: CGFloat = UIScreen.main.bounds.width

        kStatusBarHeight = window.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        kBottomBarHeight = window.safeAreaInsets.bottom

        LogManager.log(string: String(format: "screenHeight: %0.0f", kScreenHeight) )
        LogManager.log(string: String(format: "screenWidth: %0.0f", kScreenWidth) )
        LogManager.log(string: String(format: "tabBarHeight: %0.0f", kTabBarHeight) )
        LogManager.log(string: String(format: "navBarHeight: %0.0f", kNavBarHeight) )

    }

    */

}
