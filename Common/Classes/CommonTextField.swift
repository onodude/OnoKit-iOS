//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class CommonTextField: UITextField {

    convenience init(title: String, placeholder: String, font: UIFont, titleColor: UIColor, superview: UIView, delegate: Any) {

        self.init(frame: .zero)
        superview.addSubview(self)

        self.delegate = delegate as? UITextFieldDelegate

        self.returnKeyType = .done

        self.placeholder = placeholder

        self.font = font

        self.tintColor = titleColor
        self.textColor = titleColor

    }

    convenience init(title: String, placeholder: String, font: UIFont, titleColor: UIColor, placeholderColor: UIColor, bgColor: UIColor, superview: UIView, delegate: Any) {

        self.init(frame: .zero)
        superview.addSubview(self)

        self.delegate = delegate as? UITextFieldDelegate

        self.backgroundColor = bgColor

        self.returnKeyType = .done

        self.font = font

        self.textColor = titleColor

        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: placeholderColor])

    }

    func setPlaceholder(placeholder: String, font: UIFont, color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: color])
    }

    func addLeftPadding(width: Int) {
        self.leftView = CommonView(frame: CGRect(x: 0, y: 0, width: width, height: 10))
        self.leftViewMode = .always
    }

    func addRightPadding(width: Int) {
        self.rightView = CommonView(frame: CGRect(x: 0, y: 0, width: width, height: 10))
        self.rightViewMode = .always
    }

}
