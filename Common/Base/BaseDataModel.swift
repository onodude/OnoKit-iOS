//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import ObjectMapper

class BaseDataModel: Mappable {

    // MARK: - Initializers

    init() { }

    required init?(map: Map) { }

    func mapping(map: Map) { }

}
