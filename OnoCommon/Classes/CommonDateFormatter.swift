//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonDateFormatter: DateFormatter {

    public convenience init(format: String? = nil, zone: String? = nil) {

        self.init()
        if let notNullFormat = format { self.dateFormat = notNullFormat }
        if let notNullZone = zone { self.timeZone = TimeZone(abbreviation: notNullZone) }

    }

}
