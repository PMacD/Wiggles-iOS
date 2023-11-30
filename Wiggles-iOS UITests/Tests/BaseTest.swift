//
//  BaseTest.swift
//  ASOS RecipesUITests
//
//  Created by Paul MacDonald on 06/10/2023.
//  Copyright © 2023 Roberto Frenna. All rights reserved.
//

import Foundation
import XCTest


open class BaseTest: XCTestCase {
    private var baseScreen = BaseScreen()

    public enum Constants {

        public static let defaultWaitTime = 10.0
        public static let defaultLoadingTime = 30.0
    }

    lazy var app = XCUIApplication()

    open override func setUp() {
        app.launch()
        continueAfterFailure = false
    }

    open override func tearDown() {
        app.terminate()
        super.tearDown()
    }
}
