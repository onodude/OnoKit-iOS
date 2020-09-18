//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation

public extension NSString {

    public func decodeBase64() -> String? {

        let data = Data(base64Encoded: self as String, options: NSData.Base64DecodingOptions(rawValue: 0))
        return String(data: data!, encoding: String.Encoding.utf8)!

    }

    public func encodeBase64() -> String? {

        let data = self.data(using: String.Encoding.utf8.rawValue)
        return (data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0)))!

    }
}
