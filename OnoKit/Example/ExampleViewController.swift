//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class ExampleViewController: CommonViewController {

    // MARK: - Objects

    var viewModel: ExampleViewModel = ExampleViewModel()
    var viewMain: ExampleView = ExampleView()

    // MARK: - Initializers

    override func build() {

        self.viewMain.build(self.view)

    }

    override func bind() {

        self.viewMain.btnStart.action { self.viewModel.doTapStart() }

        self.viewModel.observe(self.viewModel.eventLoadView.sink { self.handleLoadView() })
        self.viewModel.observe(self.viewModel.eventTapStart.sink { self.handleTapStart() })

        self.viewModel.doLoadView()

    }

    // MARK: - Handlers

    func handleLoadView() {

        self.viewMain.btnStart.title("Get Started")
        self.viewMain.lblTitle.text("Hello World!")

    }

    func handleTapStart() {
        print("handleTapStart")
    }

}
