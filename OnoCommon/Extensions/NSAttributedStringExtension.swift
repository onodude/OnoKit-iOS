//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension NSAttributedString {

    convenience init(_ text: String, _ color: UIColor? = nil, _ font: UIFont? = nil, _ lineHeightMultiple: CGFloat? = nil, _ alignment: NSTextAlignment? = nil) {

        var attributes: [NSAttributedString.Key: Any] = [:]

        if let lineHeightMultiple = lineHeightMultiple, let alignment = alignment {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = lineHeightMultiple
            paragraphStyle.alignment = alignment

            attributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle
        }

        if let font = font {
            attributes[NSAttributedString.Key.font] = font
        }

        if let color = color {
            attributes[NSAttributedString.Key.foregroundColor] = color
        }

        self.init(string: text, attributes: attributes)

    }
}
