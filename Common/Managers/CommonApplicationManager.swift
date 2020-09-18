//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import UserNotifications

open class CommonApplicationManager: NSObject {

    open var window: UIWindow!

    private static let sharedCommon = CommonApplicationManager()

    open func start(window: UIWindow) {

        self.window = window

        loadDeviceInfo()

    }

    open func loadDeviceInfo() {

        let kScreenHeight: CGFloat = UIScreen.main.bounds.height
        let kScreenWidth: CGFloat = UIScreen.main.bounds.width

        kStatusBarHeight = window.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        kBottomBarHeight = window.safeAreaInsets.bottom

        CommonLogManager.log(string: String(format: "screenHeight: %0.0f", kScreenHeight) )
        CommonLogManager.log(string: String(format: "screenWidth: %0.0f", kScreenWidth) )
        CommonLogManager.log(string: String(format: "tabBarHeight: %0.0f", kTabBarHeight) )
        CommonLogManager.log(string: String(format: "navBarHeight: %0.0f", kNavBarHeight) )

    }

}
