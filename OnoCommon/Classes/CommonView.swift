//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonView: UIView {

    public static func create(superview: UIView, frame: CGRect = .zero, bgColor: UIColor = .clear, corner: CGFloat? = nil) -> CommonView {

        let view = CommonView()
        view.frame = frame
        view.backgroundColor = bgColor

        if let corner = corner {
            view.setCornerRadius(corner: corner)
        }

        return view

    }

}
