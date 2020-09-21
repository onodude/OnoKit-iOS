//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonTextView: UITextView {

    public convenience init(text: String, textColor: UIColor, font: UIFont, bgColor: UIColor, alignment: NSTextAlignment, superview: UIView, delegate: Any) {

        self.init(frame: .zero)
        superview.addSubview(self)

        self.delegate = delegate as? UITextViewDelegate

        self.text = text

        self.textAlignment = alignment
        self.backgroundColor = bgColor

        self.font = font
        self.textColor = textColor

        self.isSelectable = false
        self.isEditable = false
        self.dataDetectorTypes = .link

        self.returnKeyType = .done

        self.autocorrectionType = .no
        self.spellCheckingType = .no
        self.autocapitalizationType = .sentences

        superview.addSubview(self)

    }

}
