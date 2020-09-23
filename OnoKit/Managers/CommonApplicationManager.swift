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

open class CommonApplicationManager: NSObject, CommonApplicationManagerProtocol {

    open var window: UIWindow!

    public func start() { }

    public func loadDeviceInfo() { }

}
