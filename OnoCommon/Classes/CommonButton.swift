//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonButton: UIButton {

    static func create(_ superview: UIView) -> CommonButton {
        let button = CommonButton(type: .custom)
        return button.superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    func frame(_ frame: CGRect) -> CommonButton {
        self.frame = frame
        return self
    }

    func superview(_ superview: UIView) -> CommonButton {
        superview.addSubview(self)
        return self
    }

    func action(_ event: UIControl.Event = .touchUpInside, _ selector: Selector, _ target: Any) -> CommonButton {
        self.addTarget(target, action: selector, for: event)
        return self
    }

    func action(_ event: UIControl.Event = .touchUpInside, _ method: @escaping () -> Void) -> CommonButton {
        self.addAction(event, method)
        return self
    }

    func bgColor(_ bgColor: UIColor) -> CommonButton {
        self.backgroundColor = bgColor
        return self
    }

    func bgImage(_ bgImage: UIImage, _ state: UIControl.State? = nil) -> CommonButton {
        if let state = state {
            self.setImage(bgImage, for: state)
        } else {
            self.setImageForAllStates(image: bgImage)
        }
        return self
    }

    func imageName(_ imageName: String, _ state: UIControl.State? = nil) -> CommonButton {
        if let image = UIImage(named: imageName) {
            if let state = state {
                self.setImage(image, for: state)
            } else {
                self.setImageForAllStates(image: image)
            }
        }
        return self
    }

    func image(_ image: UIImage, _ state: UIControl.State? = nil) -> CommonButton {
        if let state = state {
            self.setImage(image, for: state)
        } else {
            self.setImageForAllStates(image: image)
        }
        return self
    }

    func corner(_ corner: CGFloat) -> CommonButton {
        self.setCornerRadius(corner: corner)
        return self
    }

    func titleColor(_ titleColor: UIColor, _ state: UIControl.State? = nil) -> CommonButton {
        if let state = state {
            self.setTitleColor(titleColor, for: state)
        } else {
            self.setTitleColorForAllStates(color: titleColor)
        }
        return self
    }

    func font(_ font: UIFont) -> CommonButton {
        self.setTitleFontForAllStates(font: font)
        return self
    }

    func title(_ title: String, _ state: UIControl.State? = nil) -> CommonButton {
        if let state = state {
            self.setTitle(title, for: state)
        } else {
            self.setTitleForAllStates(title: title)
        }
        return self
    }

}
