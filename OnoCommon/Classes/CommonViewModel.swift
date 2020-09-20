//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import Combine

protocol CommonViewModelProtocol {
    var disposables: Set<AnyCancellable> { get set }
}

open class CommonViewModel: CommonViewModelProtocol, ObservableObject, Identifiable {

    public init() { }

    open var disposables = Set<AnyCancellable>()

}
