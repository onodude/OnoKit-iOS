//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public class UtilityManager {

    // MARK: - Version

    public static func getAppVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        } else {
            return "0"
        }
    }

    public static func getBuildVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return version
        } else {
            return "0"
        }
    }

    public static func getBuildVersionInteger() -> Int {
        if let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return Int(version)!
        } else {
            return 0
        }
    }

    // MARK: - Static Data

    public static func getTestResponse() -> String {

        let json = String(data: try! Data(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "test_response", ofType: "json")!)), encoding: String.Encoding.utf8)!

        return json

    }

    public static func getCurrentViewController() -> UIViewController! {

        let tvc = NavigationManager.shared.tabBarController

        tvc.selectedViewController = tvc.viewControllers![2]

        let nc: UINavigationController = tvc.viewControllers![2] as! UINavigationController

        if let vc = nc.viewControllers.last {

            return vc

        }

        return nil

    }

    public static func getCurrentNavigationController() -> UINavigationController! {

        let tvc = NavigationManager.shared.tabBarController

        if let nc: UINavigationController = tvc.viewControllers![2] as? UINavigationController {

            return nc

        }

        return nil

    }

}
