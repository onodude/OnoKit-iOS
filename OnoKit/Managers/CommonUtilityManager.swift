//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

open class CommonUtilityManager {

    // MARK: - Version

    public static func appVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        } else {
            return "0"
        }
    }

    public static func buildVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return version
        } else {
            return "0"
        }
    }

    public static func buildVersionInt() -> Int {
        if let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return Int(version)!
        } else {
            return 0
        }
    }

    // MARK: - Static Data

    public static func getTestResponse() -> String {

        if let data = try? Data(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "test_response", ofType: "json")!)) {
            return String(data: data, encoding: String.Encoding.utf8) ?? ""
        }

        return ""

    }

}
