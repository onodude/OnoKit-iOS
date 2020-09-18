//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import UserNotifications

public class ApplicationManager: NSObject {

    public var window: UIWindow!

    public static let shared = ApplicationManager()

    public func start(window: UIWindow) {

        self.window = window

        loadDeviceInfo()

        ConfigManager.shared.configureLibraries()

        NavigationManager.shared.window = self.window

    }

    public func loadDeviceInfo() {

        let kScreenHeight: CGFloat = UIScreen.main.bounds.height
        let kScreenWidth: CGFloat = UIScreen.main.bounds.width

        kStatusBarHeight = window.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        kBottomBarHeight = window.safeAreaInsets.bottom

        LogManager.log(string: String(format: "screenHeight: %0.0f", kScreenHeight) )
        LogManager.log(string: String(format: "screenWidth: %0.0f", kScreenWidth) )
        LogManager.log(string: String(format: "tabBarHeight: %0.0f", kTabBarHeight) )
        LogManager.log(string: String(format: "navBarHeight: %0.0f", kNavBarHeight) )

    }

}
