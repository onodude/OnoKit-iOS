//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonImageView: UIImageView {

    public static func create(superview: UIView, frame: CGRect = .zero, bgColor: UIColor = .clear, corner: CGFloat? = nil, image: UIImage? = nil, imageName: String? = nil, contentMode: UIView.ContentMode = .center) -> CommonImageView {

        let view = CommonImageView()
        view.frame = frame
        view.backgroundColor = bgColor
        view.contentMode = contentMode

        if let corner = corner {
            view.setCornerRadius(corner: corner)
        }

        if let image = image {
            view.image = image
        }

        if let imageName = imageName {
            view.image = UIImage(named: imageName)
        }

        return view

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
