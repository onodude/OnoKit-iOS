//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

public protocol CommonApplicationManagerProtocol {

    func start()
    func loadDeviceInfo()

}

open class CommonApplicationManager {

    open var window: UIWindow!

}
