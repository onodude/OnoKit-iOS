//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation
import UIKit

extension UIImage {

    // MARK: - Common Creators

    convenience init(view: UIView) {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage: image!.cgImage!)
    }

    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }

    convenience init?(gradientColors: [UIColor], size: CGSize, isVertical: Bool) {

        let locations: [Float] = [0, 1]

        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors = gradientColors.map {(color: UIColor) -> AnyObject?? in return color.cgColor as AnyObject? } as NSArray
        let gradient: CGGradient
        if locations.count > 0 {
            let cgLocations = locations.map { CGFloat($0) }
            gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: cgLocations)!
        } else {
            gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: nil)!
        }

        if isVertical {

            context!.drawLinearGradient(gradient, start: CGPoint(x: 0, y: 0), end: CGPoint(x: 0, y: size.height), options: CGGradientDrawingOptions(rawValue: 0))

        } else {

            context!.drawLinearGradient(gradient, start: CGPoint(x: 0, y: 0), end: CGPoint(x: size.width, y: 0), options: CGGradientDrawingOptions(rawValue: 0))

        }

        self.init(cgImage: (UIGraphicsGetImageFromCurrentImageContext()?.cgImage!)!)
        UIGraphicsEndImageContext()
    }

    convenience init?(gradientColors: [UIColor], size: CGSize = CGSize(width: 10, height: 10), locations: [Float] = []) {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors = gradientColors.map {(color: UIColor) -> AnyObject? in return color.cgColor as AnyObject? } as NSArray
        let gradient: CGGradient
        if locations.count > 0 {
            let cgLocations = locations.map { CGFloat($0) }
            gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: cgLocations)!
        } else {
            gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: nil)!
        }
        context!.drawLinearGradient(gradient, start: CGPoint(x: 0, y: 0), end: CGPoint(x: size.width, y: 0), options: CGGradientDrawingOptions(rawValue: 0))
        self.init(cgImage: (UIGraphicsGetImageFromCurrentImageContext()?.cgImage!)!)
        UIGraphicsEndImageContext()
    }

    // MARK: - Common Editors

    func apply(gradientColors: [UIColor], locations: [Float] = [], blendMode: CGBlendMode = CGBlendMode.normal) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let context = UIGraphicsGetCurrentContext()
        context?.translateBy(x: 0, y: size.height)
        context?.scaleBy(x: 1.0, y: -1.0)
        context?.setBlendMode(blendMode)
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        context?.draw(self.cgImage!, in: rect)
        // Create gradient
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors = gradientColors.map {(color: UIColor) -> AnyObject? in return (color.cgColor as AnyObject??)! } as NSArray
        let gradient: CGGradient
        if locations.count > 0 {
            let cgLocations = locations.map { CGFloat($0) }
            gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: cgLocations)!
        } else {
            gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: nil)!
        }
        // Apply gradient
        context?.clip(to: rect, mask: self.cgImage!)
        context?.drawLinearGradient(gradient, start: CGPoint(x: 0, y: 0), end: CGPoint(x: 0, y: size.height), options: CGGradientDrawingOptions(rawValue: 0))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }

    func alpha(_ value: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: value)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }

    func tintWithColor(color: UIColor) -> UIImage {

        UIGraphicsBeginImageContext(self.size)
        let context = UIGraphicsGetCurrentContext()

        // flip the image

        context?.scaleBy(x: 1.0, y: -1.0)
        context?.translateBy(x: 0.0, y: -self.size.height)

        // multiply blend mode
        context!.setBlendMode(.multiply)

        let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        context?.clip(to: rect, mask: self.cgImage!)
        color.setFill()
        context!.fill(rect)

        // create uiimage
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!

    }

    func resizeImage(size: CGSize) -> UIImage! {
        UIGraphicsBeginImageContext(size)
        self.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let destImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return destImage
    }

    func convertToBase64() -> String {
        let imageData = self.jpegData(compressionQuality: 0.70)!
        return "data:image/jpeg;base64," + (imageData.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0)))
    }

}

extension UIImage {

    static func lettersImage(letters: String,
                             font: UIFont = .boldSystemFont(ofSize: 40),
                             textColor: UIColor = .white,
                             backgroundColor: UIColor = .lightGray,
                             size: CGSize = .init(width: 100, height: 100)) -> UIImage? {

        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let nameLabel = UILabel(frame: frame)
        nameLabel.textAlignment = .center
        nameLabel.backgroundColor = backgroundColor
        nameLabel.textColor = textColor
        nameLabel.font = font
        nameLabel.text = letters

        UIGraphicsBeginImageContext(frame.size)
        guard let currentContext = UIGraphicsGetCurrentContext() else { return nil }

        nameLabel.layer.render(in: currentContext)
        let nameImage = UIGraphicsGetImageFromCurrentImageContext()

        return nameImage

    }

}
