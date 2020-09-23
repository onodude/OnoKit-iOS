//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
public protocol CommonColorManagerProtocol {

    static var colorWhiteCode: String { get set }
    static var colorBlackCode: String { get set }

    static func colorWhite() -> UIColor
    static func colorBlack() -> UIColor

}

open class CommonColorManager: NSObject { }
