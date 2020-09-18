//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

public extension NSAttributedString {

    public convenience init(text: String, lineHeightMultiple: CGFloat, alignment: NSTextAlignment, font: UIFont) {

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        paragraphStyle.alignment = alignment

        let attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.paragraphStyle: paragraphStyle, NSAttributedString.Key.font: font]

        self.init(string: text, attributes: attributes)

    }
}
