//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

extension UIView {

    func allSubViewsOf<T: UIView>(type: T.Type) -> [T] {
        var all = [T]()
        func getSubview(view: UIView) {
            if let aView = view as? T {
                all.append(aView)
            }
            guard view.subviews.count>0 else { return }
            view.subviews.forEach { getSubview(view: $0) }
        }
        getSubview(view: self)
        return all
    }

    // MARK: - Common Editors

    func withPadding(padding: UIEdgeInsets) -> UIView {

        let container = UIView()
        self.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(self)
        container.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-(\(padding.left))-[view]-(\(padding.right))-|", options: [], metrics: nil, views: ["view": self]))
        container.addConstraints(NSLayoutConstraint.constraints( withVisualFormat: "V:|-(\(padding.top))-[view]-(\(padding.bottom))-|", options: [], metrics: nil, views: ["view": self]))

        return container

    }

    func addShadow(color: UIColor, offset: CGSize, radius: CGFloat, opacity: Float) {

        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius

        self.layer.masksToBounds = false
        //  self.layer.shouldRasterize = true
        //  self.layer.rasterizationScale = UIScreen.main.scale

    }

    func addCommonShadow() {

        self.addShadow(color: .black, offset: CGSize(width: 0, height: 5), radius: 0, opacity: 0.0075)

    }

    func setCornerRadius(corner: CGFloat) {

        self.layer.cornerRadius = corner
        self.layer.masksToBounds = true

    }

    func addBorder(width: CGFloat, color: UIColor) {

        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width

    }

    func roundCorners(_ corners: UIRectCorner, radius: CGFloat, rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }

    func removeAllSubviews() {

        self.subviews.forEach({ $0.removeFromSuperview() })

    }

    func printSubviews() {

        let subviews = self.subviews

        if subviews.count == 0 {
            return
        }

        for subview: UIView in subviews {

            print(subview)

            subview.printSubviews()

        }

    }

}
