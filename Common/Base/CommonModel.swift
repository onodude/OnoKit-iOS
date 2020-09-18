//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import ObjectMapper

open class CommonModel: Mappable {

    // MARK: - Initializers

    init() { }

    public required init?(map: Map) { }

    open func mapping(map: Map) { }

}
