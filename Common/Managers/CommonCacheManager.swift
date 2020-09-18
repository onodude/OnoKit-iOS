//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation

open class CommonCacheManager {

    // MARK: - Helpers

    public static func clear() {

        if let appDomain = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: appDomain)
        }

    }

    public static func setArrayForKey<T>(value: [T], key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func getArrayForKey<T>(key: String) -> [T] {

        if let value: [T] = UserDefaults.standard.value(forKey: key) as? [T] {

            return value

        } else {

            return []

        }

    }

    public static func setBoolForKey(value: Bool, key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func getBoolForKey(key: String) -> Bool {

        let boolean: Bool = UserDefaults.standard.bool(forKey: key)

        return boolean

    }

    public static func setStringForKey(value: String, key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func getStringForKey(key: String) -> String {

        if let value = UserDefaults.standard.string(forKey: key) {

            return value

        } else {

            return "-1"

        }

    }

    public static func setIntForKey(value: Int, key: String) {

        let stringValue = String(format: "%d", value)

        UserDefaults.standard.set(stringValue, forKey: key)

    }

    public static func getIntForKey(key: String) -> Int {

        if let value: String = UserDefaults.standard.string(forKey: key) {

            return Int(value)!

        } else {

            return -1

        }

    }

}
