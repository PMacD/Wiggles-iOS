//
//  BaseTest.swift
//  Wiggles-iOSUITests
//
//  Created by Paul MacDonald on 30/11/2023.
//

import Foundation
import XCTest


open class BaseTest: XCTestCase {
//    private var baseScreen = BaseScreen()

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
