//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonImageView: UIImageView {

    static func create(_ superview: UIView) -> CommonImageView {
        return CommonImageView().superview(superview).frame(.zero).bgColor(.clear)
    }

    // MARK: - Setters

    func frame(_ frame: CGRect) -> CommonImageView {
        self.frame = frame
        return self
    }

    func superview(_ superview: UIView) -> CommonImageView {
        superview.addSubview(self)
        return self
    }

    func bgColor(_ bgColor: UIColor) -> CommonImageView {
        self.backgroundColor = bgColor
        return self
    }

    func image(_ image: UIImage) -> CommonImageView {
        self.image = image
        self.contentMode = .center
        return self
    }

    func imageName(_ imageName: String) -> CommonImageView {
        self.image = UIImage(named: imageName)
        self.contentMode = .center
        return self
    }

    // MARK: - Actions

    func loadImageView(photoUrl: String, aspectMode: UIView.ContentMode) {

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
