//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import KeychainAccess
import ObjectMapper

class StorageManager {

    // MARK: - Keys

    static let kCommonGroup: String = "CommonKeychainGroup"
    static let kCommonService: String = "CommonKeychainService"

    static let kDeviceId: String = "DeviceId"
    static let kServiceUrl: String = "ServiceUrl"
    static let kToken: String = "Token"

    // MARK: - Device

    static func getDeviceID() -> String {

        let deviceId: String = getStringForKey(key: kDeviceId)

        return deviceId

    }

    static func setDeviceID(_ key: String) {

        setStringForKey(value: key, key: kDeviceId)

    }

    // MARK: - Network

    static func getToken() -> String {

        let token: String = getStringForKey(key: kToken)

        return token

    }

    static func setToken(_ key: String) {

        setStringForKey(value: key, key: kToken)

    }

    // MARK: - Helpers

    static func setBoolForKey(value: Bool, key: String) {

        let keychain = Keychain(service: kCommonService)

        keychain[key] = String(value)

    }

    static func getBoolForKey(key: String) -> Bool {

        let keychain = Keychain(service: kCommonService)

        var boolean: Bool = false

        if let value = keychain[key] {

            boolean = value.toBool()!

        }

        return boolean

    }

    static func setStringForKey(value: String, key: String) {

        let keychain = Keychain(service: kCommonService)

        keychain[key] = value

    }

    static func getStringForKey(key: String) -> String {

        let keychain = Keychain(service: kCommonService)

        if let value: String = keychain[key] {

            return value

        } else {

            return "-1"

        }

    }

    static func setIntForKey(value: Int, key: String) {

        let keychain = Keychain(service: kCommonService)

        keychain[key] = String(format: "%d", value)

    }

    static func getIntForKey(key: String) -> Int {

        let keychain = Keychain(service: kCommonService)

        if let value: String = keychain[key] {

            return Int(value)!

        } else {

            return 0

        }

    }

}
