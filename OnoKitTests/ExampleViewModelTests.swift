//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import XCTest
@testable import OnoKit

class ExampleViewModelTests: XCTestCase {

    let viewModel: ExampleViewModel = ExampleViewModel()

    func testLoadView() {
        var eventCalled = false
        let handleEvent = { eventCalled = true }
        viewModel.observe(viewModel.eventLoadView.sink(receiveValue: handleEvent))
        viewModel.doLoadView()
        XCTAssert(eventCalled)
    }

    func testTapStart() {
        var eventCalled = false
        let handleEvent = { eventCalled = true }
        viewModel.observe(viewModel.eventTapStart.sink(receiveValue: handleEvent))
        viewModel.doTapStart()
        XCTAssert(eventCalled)
    }

}
