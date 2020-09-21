//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension NSAttributedString {

    convenience init(text: String, _ font: UIFont, _ lineHeightMultiple: CGFloat? = nil, _ alignment: NSTextAlignment? = nil) {

        var attributes: [NSAttributedString.Key: Any] = [:]

        if let lineHeightMultiple = lineHeightMultiple, let alignment = alignment {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = lineHeightMultiple
            paragraphStyle.alignment = alignment

            attributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle
        }

        attributes[NSAttributedString.Key.font] = font

        self.init(string: text, attributes: attributes)

    }
}
