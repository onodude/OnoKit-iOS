//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonLabel: UILabel {

    public static func create(superview: UIView, frame: CGRect = .zero, bgColor: UIColor = .clear, corner: CGFloat? = nil, textColor: UIColor? = nil, font: UIFont? = nil, alignment: NSTextAlignment? = nil, insets: UIEdgeInsets? = nil) -> CommonLabel {

        let view = CommonLabel()
        view.frame = frame
        view.backgroundColor = bgColor

        if let corner = corner {
            view.setCornerRadius(corner: corner)
        }

        if let textColor = textColor {
            view.textColor = textColor
        }

        if let font = font {
            view.font = font
        }

        if let alignment = alignment {
            view.textAlignment = alignment
        }

        if let insets = insets {
            view.drawText(in: view.frame.inset(by: insets))
            view.setNeedsLayout()
        }

        return view

    }

    // MARK: - Configuration

    open override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        super.drawText(in: rect.inset(by: insets))
    }

}
