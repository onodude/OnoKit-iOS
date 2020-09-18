//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

class UtilityManager {

    // MARK: - Version

    static func getAppVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        } else {
            return "0"
        }
    }

    static func getBuildVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return version
        } else {
            return "0"
        }
    }

    static func getBuildVersionInteger() -> Int {
        if let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return Int(version)!
        } else {
            return 0
        }
    }

    // MARK: - Static Data

    static func getTestResponse() -> String {

        let json = String(data: try! Data(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "test_response", ofType: "json")!)), encoding: String.Encoding.utf8)!

        return json

    }

    static func getCurrentViewController() -> UIViewController! {

        let tvc = NavigationManager.shared.tabBarController

        tvc.selectedViewController = tvc.viewControllers![2]

        let nc: UINavigationController = tvc.viewControllers![2] as! UINavigationController

        if let vc = nc.viewControllers.last {

            return vc

        }

        return nil

    }

    static func getCurrentNavigationController() -> UINavigationController! {

        let tvc = NavigationManager.shared.tabBarController

        if let nc: UINavigationController = tvc.viewControllers![2] as? UINavigationController {

            return nc

        }

        return nil

    }

}
