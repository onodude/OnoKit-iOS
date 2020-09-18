//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import Combine

class BaseViewModel: ObservableObject, Identifiable {

    var disposables = Set<AnyCancellable>()

}
