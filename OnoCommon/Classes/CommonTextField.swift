//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonTextField: UITextField {

    public enum Position {
        case left
        case right
    }

    public static func create(_ superview: UIView) -> CommonTextField {
        return CommonTextField().superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    @discardableResult
    public func handler(_ handler: CommonTextFieldHandler) -> CommonTextField {
        self.delegate = handler
        return self
    }

    @discardableResult
    public func frame(_ frame: CGRect) -> CommonTextField {
        self.frame = frame
        return self
    }

    @discardableResult
    public func superview(_ superview: UIView) -> CommonTextField {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func bgColor(_ bgColor: UIColor) -> CommonTextField {
        self.backgroundColor = bgColor
        return self
    }

    @discardableResult
    public func corner(_ corner: CGFloat) -> CommonTextField {
        self.setCornerRadius(corner: corner)
        return self
    }

    @discardableResult
    public func border(_ color: UIColor, _ width: CGFloat) -> CommonTextField {
        self.addBorder(width: width, color: color)
        return self
    }

    @discardableResult
    public func textColor(_ textColor: UIColor) -> CommonTextField {
        self.textColor = textColor
        return self
    }

    @discardableResult
    public func placeholderColor(_ placeholderColor: UIColor) -> CommonTextField {
        if let placeholder = self.placeholder, let font = self.font {
            self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: placeholderColor])
        }
        return self
    }

    @discardableResult
    public func font(_ font: UIFont) -> CommonTextField {
        self.font = font
        return self
    }

    @discardableResult
    public func alignment(_ alignment: NSTextAlignment) -> CommonTextField {
        self.textAlignment = alignment
        return self
    }

    @discardableResult
    public func padding(_ insets: UIEdgeInsets) -> CommonTextField {
        super.drawText(in: self.frame.inset(by: insets))
        self.setNeedsLayout()
        return self
    }

    @discardableResult
    public func text(_ text: String) -> CommonTextField {
        self.text = text
        return self
    }

    @discardableResult
    public func text(_ text: NSAttributedString) -> CommonTextField {
        self.attributedText = text
        return self
    }

    @discardableResult
    public func placeholder(_ placeholder: String) -> CommonTextField {
        self.placeholder = placeholder
        return self
    }

    @discardableResult
    public func placeholder(_ placeholder: NSAttributedString) -> CommonTextField {
        self.attributedPlaceholder = placeholder
        return self
    }

    @discardableResult
    public func returnKeyType(_ type: UIReturnKeyType) -> CommonTextField {
        self.returnKeyType = type
        return self
    }

    @discardableResult
    public func autocapitalizationType(_ type: UITextAutocapitalizationType) -> CommonTextField {
        self.autocapitalizationType = type
        return self
    }

    @discardableResult
    public func keyboardType(_ type: UIKeyboardType) -> CommonTextField {
        self.keyboardType = type
        return self
    }

    @discardableResult
    public func contentType(_ type: UITextContentType) -> CommonTextField {
        self.textContentType = type
        return self
    }

    @discardableResult
    public func secureText(_ secureText: Bool) -> CommonTextField {
        self.isSecureTextEntry = secureText
        return self
    }

    @discardableResult
    public func padding(_ width: Int, _ position: Position) -> CommonTextField {
        if position == .left {
            self.leftView = CommonView(frame: CGRect(x: 0, y: 0, width: width, height: 10))
            self.leftViewMode = .always
        } else if position == .right {
            self.rightView = CommonView(frame: CGRect(x: 0, y: 0, width: width, height: 10))
            self.rightViewMode = .always
        }
        return self
    }

    // MARK: - Configuration

    open override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        super.drawText(in: rect.inset(by: insets))
    }

}

/*

{

    public convenience init(title: String, placeholder: String, font: UIFont, titleColor: UIColor, placeholderColor: UIColor, bgColor: UIColor, autocapitalizationType: UITextAutocapitalizationType, keyboardType: UIKeyboardType, textContentType: UITextContentType, superview: UIView, delegate: Any) {

        self.init(frame: .zero)
        superview.addSubview(self)

        self.delegate = delegate as? UITextFieldDelegate

        self.backgroundColor = bgColor

        self.returnKeyType = .done
        self.autocapitalizationType = autocapitalizationType
        self.keyboardType = keyboardType
        self.textContentType = textContentType

        self.font = font

        self.textColor = titleColor

        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: placeholderColor])

    }

    public convenience init(title: String, placeholder: String, font: UIFont, titleColor: UIColor, superview: UIView, delegate: Any) {

        self.init(frame: .zero)
        superview.addSubview(self)

        self.delegate = delegate as? UITextFieldDelegate

        self.returnKeyType = .done

        self.placeholder = placeholder

        self.font = font

        self.tintColor = titleColor
        self.textColor = titleColor

    }

    public convenience init(title: String, placeholder: String, font: UIFont, titleColor: UIColor, placeholderColor: UIColor, bgColor: UIColor, superview: UIView, delegate: Any) {

        self.init(frame: .zero)
        superview.addSubview(self)

        self.delegate = delegate as? UITextFieldDelegate

        self.backgroundColor = bgColor

        self.returnKeyType = .done

        self.font = font

        self.textColor = titleColor

        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: placeholderColor])

    }

    public func setPlaceholder(placeholder: String, font: UIFont, color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: color])
    }

    public func addLeftPadding(width: Int) {
        self.leftView = CommonView(frame: CGRect(x: 0, y: 0, width: width, height: 10))
        self.leftViewMode = .always
    }

    public func addRightPadding(width: Int) {
        self.rightView = CommonView(frame: CGRect(x: 0, y: 0, width: width, height: 10))
        self.rightViewMode = .always
    }

}


 */
