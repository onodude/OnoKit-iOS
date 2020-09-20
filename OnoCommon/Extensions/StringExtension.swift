//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension String {

    func height(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)

        return ceil(boundingBox.height)
    }

    func width(height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)

        return ceil(boundingBox.width)
    }

    func stripHtml() -> String {

        return  self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil).replacingOccurrences(of: "\n\n", with: " ")

    }

    func getURL() -> URL {

        return URL(string: self)!

    }

    func getURLOpt() -> URL! {
        return URL(string: self)
    }

    func getURLWithEscapeChar() -> URL {
        let escapedString = self.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)
        return URL(string: escapedString!)!
    }

    func substringToIndex(index: Int) -> String {

        let index: String.Index = self.index(self.startIndex, offsetBy: index)

        let substring: String = String(self[...index])

        return substring

    }

    func substringFromIndex(index: Int) -> String {

        let index: String.Index = self.index(self.startIndex, offsetBy: index)

        let substring: String = String(self[index...])

        return substring

    }

    func substringWithRange(sIndex: Int, eIndex: Int) -> String {

        let startIndex: String.Index = self.index(self.startIndex, offsetBy: sIndex)
        let endIndex: String.Index = self.index(self.startIndex, offsetBy: eIndex)

        let newStr: String = String(self[startIndex..<endIndex])

        return newStr
    }

    func slice(from: String, to: String) -> String? {

        return (range(of: from)?.upperBound).flatMap { substringFrom in
            (range(of: to, range: substringFrom..<endIndex)?.lowerBound).map { substringTo in
                String(self[substringFrom..<substringTo])
            }
        }
    }

    static func booleanToString(_ boolean: Bool) -> String {

        if boolean {

            return "true"

        } else {

            return "false"

        }

    }

    func toBool() -> Bool? {
        switch self {
        case "True", "true", "yes", "1":
            return true
        case "False", "false", "no", "0":
            return false
        default:
            return nil
        }
    }

    func getBase64Value() -> String {
        return self.data(using: String.Encoding.utf8)!.base64EncodedString(options: [])
    }

    func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

    func isValidEmail() -> Bool {

        //println("validate emilId: \(testStr)")

        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)

        let result = emailTest.evaluate(with: self.trim())

        return result
    }

    func replacingCharacters(in range: NSRange, with replacement: String) -> String {

        let newText: String = (self as NSString).replacingCharacters(in: range, with: replacement)

        return newText

    }

    func removeHTML() -> String {
        let string = self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        return string
    }

}
extension NSAttributedString {

    convenience init(htmlString html: String) throws {
        try self.init(data: Data(html.utf8), options: [
            .documentType: NSAttributedString.DocumentType.html,
            .characterEncoding: String.Encoding.utf8.rawValue
            ], documentAttributes: nil)
    }

}
