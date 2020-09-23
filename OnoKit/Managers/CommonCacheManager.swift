//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation

public class CommonCacheManager: NSObject {

    // MARK: - Helpers

    public static func clear() {

        if let appDomain = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: appDomain)
        }

    }

    public static func array<T>(_ value: [T], forKey key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func array<T>(_ key: String) -> [T]? {

        if let value: [T] = UserDefaults.standard.value(forKey: key) as? [T] {

            return value

        } else {

            return nil

        }

    }

    public static func bool(_ value: Bool, forKey key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func bool(forKey key: String) -> Bool? {

        let boolean: Bool = UserDefaults.standard.bool(forKey: key)
        return boolean

    }

    public static func string(_ value: String, forKey key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func string(forKey key: String) -> String? {

        let value = UserDefaults.standard.string(forKey: key)
        return value

    }

    public static func int(_ value: Int, forKey key: String) {

        let stringValue = String(format: "%d", value)
        UserDefaults.standard.set(stringValue, forKey: key)

    }

    public static func int(forKey key: String) -> Int? {

        if let value: String = UserDefaults.standard.string(forKey: key) {
            return Int(value)
        } else {
            return nil
        }

    }

}
