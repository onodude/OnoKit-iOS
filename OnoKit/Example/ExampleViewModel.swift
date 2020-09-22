//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit
import Combine

class ExampleViewModel: CommonViewModel {

    // MARK: - Events

    let eventLoadView = PassthroughSubject<Void, Never>()
    let eventTapStart = PassthroughSubject<Void, Never>()

    // MARK: - Actions

    func doLoadView() {
        eventLoadView.send()
    }

    func doTapStart() {
        eventTapStart.send()
    }

}
