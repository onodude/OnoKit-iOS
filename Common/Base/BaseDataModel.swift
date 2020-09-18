//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import ObjectMapper

public class BaseDataModel: Mappable {

    // MARK: - Initializers

    init() { }

    public required init?(map: Map) { }

    public func mapping(map: Map) { }

}
