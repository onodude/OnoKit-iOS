//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import KeychainAccess

open class CommonStorageManager: NSObject {

    // MARK: - Keys

    static let kCommonGroup: String = "CommonKeychainGroup"
    static let kCommonService: String = "CommonKeychainService"

    // MARK: - Helpers

    public static func clear() {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)
        try? keychain.removeAll()

    }

    public static func get<T>(_ key: String) -> [T]? {

        if let value: [T] = UserDefaults.standard.value(forKey: key) as? [T] {

            return value

        } else {

            return nil

        }

    }

    public static func set(_ value: Bool, forKey key: String) {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        keychain[key] = String(value)

    }

    public static func get(forKey key: String) -> Bool {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        var boolean: Bool = false

        if let value = keychain[key] {

            boolean = value.toBool()!

        }

        return boolean

    }

    public static func set(_ value: String, forKey key: String) {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        keychain[key] = value

    }

    public static func get(forKey key: String) -> String? {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        if let value: String = keychain[key] {

            return value

        } else {

            return nil

        }

    }

    public static func set(_ value: Int, forKey key: String) {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        keychain[key] = String(format: "%d", value)

    }

    public static func get(forKey key: String) -> Int? {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        if let value: String = keychain[key] {

            return Int(value)!

        } else {

            return nil

        }

    }

}
