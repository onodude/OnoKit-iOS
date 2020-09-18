//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import Combine

open class BaseViewModel: ObservableObject, Identifiable {

    open var disposables = Set<AnyCancellable>()

}
