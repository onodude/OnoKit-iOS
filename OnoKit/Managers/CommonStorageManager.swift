//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import KeychainAccess

public class CommonStorageManager: NSObject {

    let shared = CommonStorageManager()

    // MARK: - Keys

    static let kCommonGroup: String = "CommonKeychainGroup"
    static let kCommonService: String = "CommonKeychainService"

    // MARK: - Helpers

    public static func bool(_ value: Bool, forKey key: String) {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        keychain[key] = String(value)

    }

    public static func bool(forKey key: String) -> Bool {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        var boolean: Bool = false

        if let value = keychain[key] {

            boolean = value.toBool()!

        }

        return boolean

    }

    public static func string(_ value: String, forKey key: String) {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        keychain[key] = value

    }

    public static func string(forKey key: String) -> String? {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        if let value: String = keychain[key] {

            return value

        } else {

            return nil

        }

    }

    public static func int(_ value: Int, forKey key: String) {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        keychain[key] = String(format: "%d", value)

    }

    public static func int(forKey key: String) -> Int? {

        let keychain = Keychain(service: CommonStorageManager.kCommonService)

        if let value: String = keychain[key] {

            return Int(value)!

        } else {

            return nil

        }

    }

}
