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

    open func observe(_ event: PassthroughSubject<Void, Never>, _ action: @escaping () -> Void) {
        event.sink { (_) in action() }.store(in: &self.disposables)
    }

    open func observe(_ event: PassthroughSubject<Any, Never>, _ action: @escaping (_ something: Any) -> Void) {
        event.sink { (something) in
            action(something)
        }.store(in: &self.disposables)
    }

}
