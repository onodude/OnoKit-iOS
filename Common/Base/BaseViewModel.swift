//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import Combine

public class BaseViewModel: ObservableObject, Identifiable {

    public var disposables = Set<AnyCancellable>()

}
