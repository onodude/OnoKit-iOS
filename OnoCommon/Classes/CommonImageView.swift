//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonImageView: UIImageView {

    public static func create(_ superview: UIView) -> CommonImageView {
        return CommonImageView().superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    @discardableResult
    public func frame(_ frame: CGRect) -> CommonImageView {
        self.frame = frame
        return self
    }

    @discardableResult
    public func superview(_ superview: UIView) -> CommonImageView {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func bgColor(_ bgColor: UIColor) -> CommonImageView {
        self.backgroundColor = bgColor
        return self
    }

    @discardableResult
    public func image(_ image: UIImage) -> CommonImageView {
        self.image = image
        self.contentMode = .center
        return self
    }

    @discardableResult
    public func imageName(_ imageName: String) -> CommonImageView {
        self.image = UIImage(named: imageName)
        self.contentMode = .center
        return self
    }

    @discardableResult
    public func corner(_ corner: CGFloat) -> CommonImageView {
        self.setCornerRadius(corner: corner)
        return self
    }

    @discardableResult
    public func border(_ color: UIColor, _ width: CGFloat) -> CommonImageView {
        self.addBorder(width: width, color: color)
        return self
    }

    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> CommonImageView {
        self.contentMode = contentMode
        return self
    }

    // MARK: - Actions

    public func loadImageView(photoUrl: String, aspectMode: UIView.ContentMode) {

        self.image = UIImage(named: "img_placeholder")

        guard let url = URL(string: photoUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let error = error {
                print("Failed fetching image:", error.localizedDescription)
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                print("Not a proper HTTPURLResponse or statusCode")
                return
            }

            DispatchQueue.main.async {
                self.image = UIImage(data: data!)
                self.contentMode = aspectMode
            }
        }.resume()

    }

}
