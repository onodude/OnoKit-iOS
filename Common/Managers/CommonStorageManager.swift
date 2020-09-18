//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import KeychainAccess

open class CommonStorageManager {

    // MARK: - Keys

    public static let kCommonGroup: String = "CommonKeychainGroup"
    public static let kCommonService: String = "CommonKeychainService"

    public static let kDeviceId: String = "DeviceId"
    public static let kServiceUrl: String = "ServiceUrl"
    public static let kToken: String = "Token"

    // MARK: - Device

    public static func getDeviceID() -> String {

        let deviceId: String = getStringForKey(key: kDeviceId)

        return deviceId

    }

    public static func setDeviceID(_ key: String) {

        setStringForKey(value: key, key: kDeviceId)

    }

    // MARK: - Network

    public static func getToken() -> String {

        let token: String = getStringForKey(key: kToken)

        return token

    }

    public static func setToken(_ key: String) {

        setStringForKey(value: key, key: kToken)

    }

    // MARK: - Helpers

    public static func setBoolForKey(value: Bool, key: String) {

        let keychain = Keychain(service: kCommonService)

        keychain[key] = String(value)

    }

    public static func getBoolForKey(key: String) -> Bool {

        let keychain = Keychain(service: kCommonService)

        var boolean: Bool = false

        if let value = keychain[key] {

            boolean = value.toBool()!

        }

        return boolean

    }

    public static func setStringForKey(value: String, key: String) {

        let keychain = Keychain(service: kCommonService)

        keychain[key] = value

    }

    public static func getStringForKey(key: String) -> String {

        let keychain = Keychain(service: kCommonService)

        if let value: String = keychain[key] {

            return value

        } else {

            return "-1"

        }

    }

    public static func setIntForKey(value: Int, key: String) {

        let keychain = Keychain(service: kCommonService)

        keychain[key] = String(format: "%d", value)

    }

    public static func getIntForKey(key: String) -> Int {

        let keychain = Keychain(service: kCommonService)

        if let value: String = keychain[key] {

            return Int(value)!

        } else {

            return 0

        }

    }

}
