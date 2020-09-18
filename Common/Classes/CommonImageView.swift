//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public class CommonImageView: UIImageView {

    // MARK: - Initializers

    public convenience init(imageName: String, superview: UIView) {

        self.init(frame: .zero)

        self.backgroundColor = .clear
        self.image = UIImage(named: imageName)
        self.contentMode = .center

        superview.addSubview(self)

    }

    public convenience init(backgroundColor: UIColor, superview: UIView) {

        self.init(frame: .zero)

        self.backgroundColor = backgroundColor

        superview.addSubview(self)

    }

    public convenience init(image: UIImage, superview: UIView) {

        self.init(frame: .zero)

        self.backgroundColor = .clear
        self.image = image

        superview.addSubview(self)

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
