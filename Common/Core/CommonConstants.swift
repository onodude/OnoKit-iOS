//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

var kScreenHeight: CGFloat = UIScreen.main.bounds.height
var kScreenWidth: CGFloat = UIScreen.main.bounds.width

var kStatusBarHeight: CGFloat = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
var kBottomBarHeight: CGFloat = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? 0

var kTabBarHeight: CGFloat = CommonNavigationManager.sharedCommon.tabBarController.tabBar.frame.size.height
var kNavBarHeight: CGFloat = CommonNavigationManager.sharedCommon.navigationController.navigationBar.frame.height
