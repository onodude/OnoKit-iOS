//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import Combine

open class CommonViewModel: ObservableObject, Identifiable {

    public init() { }

    open var disposables = Set<AnyCancellable>()

}
