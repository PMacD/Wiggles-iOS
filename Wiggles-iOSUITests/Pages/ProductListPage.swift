//
//  ProductListPage.swift
//  Wiggles-iOSUITests
//
//  Created by Paul MacDonald on 30/11/2023.
//

import Foundation
import XCTest


class ProductListPage: BaseScreen {
    
    private lazy var PlpTitle = app.staticTexts["Hey Sameer,"]
    private lazy var PlpSubTitle = app.staticTexts["Adopt a new friend near you!"]
    private lazy var firstListItem = app.scrollViews.otherElements.buttons["Parkinson, 2 yrs | Playful, 341m away, Male, 12 min ago"]
    
    
    func verifyPLPIsDisplayed() {
        XCTAssertTrue(PlpTitle.waitForExistence(timeout: 5), "PLP title is not displayed")
        XCTAssertTrue(PlpSubTitle.exists, "PLP sub-title is not displayed")
        XCTAssertTrue(firstListItem.exists, "First list item is not displayed")
    }
}
