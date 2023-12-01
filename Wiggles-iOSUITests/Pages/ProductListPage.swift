//
//  ProductListPage.swift
//  Wiggles-iOSUITests
//
//  Created by Paul MacDonald on 30/11/2023.
//

import Foundation
import XCTest


class ProductListPage: BaseScreen {
    
    private lazy var plpHeading = app.staticTexts["plpHeading"]
    private lazy var plpSubHeading = app.staticTexts["plpSubHeading"]
    private lazy var plpListHeader = app.staticTexts["plpListHeader"]
    private lazy var firstPlpDogImage = app.scrollViews.otherElements.images["plpDogImage"].firstMatch
    private lazy var firstPlpDogName = app.scrollViews.otherElements.staticTexts["plpDogName"].firstMatch
    private lazy var firstPlpDogGender = app.scrollViews.otherElements.staticTexts["plpDogGender"].firstMatch
    private lazy var firstPlpDogAgeTemperament = app.scrollViews.otherElements.staticTexts["plpDogAgeTemperament"].firstMatch
    private lazy var firstPlpDogLocation = app.scrollViews.otherElements.staticTexts["plpDogLocation"].firstMatch
    private lazy var firstPlpAdPostedTime = app.scrollViews.otherElements.staticTexts["plpAdPosted"].firstMatch
    
    func verifyPLPIsDisplayed() {
        XCTAssertTrue(plpHeading.waitForExistence(timeout: 5), "PLP title is not displayed")
        XCTAssertTrue(plpSubHeading.exists, "PLP sub-title is not displayed")
        XCTAssertTrue(plpListHeader.exists, "PLP list header is not displayed")
        XCTAssertTrue(firstPlpDogImage.exists, "First dog image is not displayed")
        XCTAssertTrue(firstPlpDogName.exists, "First dog name is not displayed")
        XCTAssertTrue(firstPlpDogGender.exists, "First dog gender is not displayed")
        XCTAssertTrue(firstPlpDogAgeTemperament.exists, "First dog age and temperament is not displayed")
        XCTAssertTrue(firstPlpDogLocation.exists, "First dog location is not displayed")
        XCTAssertTrue(firstPlpAdPostedTime.exists, "First dog ad posted time is not displayed")
    }
    
    func tapOnFirstAdvert() {
        firstPlpDogImage.tap()
    }
    
}
