//
//  ProductDetailsPage.swift
//  Wiggles-iOSUITests
//
//  Created by Paul MacDonald on 01/12/2023.
//

import Foundation
import XCTest

class ProductDetailsPage: BaseScreen {
    
    private lazy var dogImage = app.scrollViews.otherElements.images["dogImage"]
    private lazy var backNavArrow = app.scrollViews.otherElements.buttons["backNavArrow"]
    private lazy var favouriteIcon = app.scrollViews.otherElements.buttons["favouriteIcon"]
    private lazy var dogName = app.scrollViews.otherElements.staticTexts["dogName"]
    private lazy var dogGender = app.scrollViews.otherElements.staticTexts["dogGender"]
    private lazy var dogLocation = app.scrollViews.otherElements.staticTexts["dogLocation"]
    private lazy var dogAgeAndTemperament = app.scrollViews.otherElements.staticTexts["dogAgeAndTemperament"]
    private lazy var adPosted = app.scrollViews.otherElements.staticTexts["adPosted"]
    private lazy var myStoryHeader = app.scrollViews.otherElements.staticTexts["My Story"]
    private lazy var storyText = app.scrollViews.otherElements.staticTexts["storyText"]
    private lazy var quickInfoHeader = app.scrollViews.otherElements.staticTexts["Quick Info"]
    private lazy var quickInfoAge = app.scrollViews.otherElements.staticTexts["quickInfoAge"]
    private lazy var quickInfoColor = app.scrollViews.otherElements.staticTexts["quickInfoColor"]
    private lazy var quickInfoWeight = app.scrollViews.otherElements.staticTexts["quickInfoWeight"]
    private lazy var ownerInfoHeader = app.scrollViews.otherElements.staticTexts["Owner Info"]
    private lazy var ownerImage = app.scrollViews.otherElements.images["owner_image"]
    private lazy var ownerName = app.scrollViews.otherElements.staticTexts["ownerName"]
    private lazy var ownerBio = app.scrollViews.otherElements.staticTexts["ownerBio"]
    private lazy var msgButton = app.scrollViews.otherElements.buttons["msgButton"]
    private lazy var adoptMeButton = app.scrollViews.otherElements.buttons["Adopt me"]
    
    
    func verifyPDPIsDisplayed() {
        XCTAssertTrue(dogImage.exists, "Dog image is not displayed")
        XCTAssertTrue(backNavArrow.exists, "Back arrow is not displayed")
        XCTAssertTrue(favouriteIcon.exists, "Favourite icon is not displayed")
        XCTAssertTrue(dogName.exists, "Dog name is not displayed")
        XCTAssertTrue(dogGender.exists, "Dog gender is not displayed")
        XCTAssertTrue(dogLocation.exists, "Dog location is not displayed")
        XCTAssertTrue(dogAgeAndTemperament.exists, "Dog age and temperament is not displayed")
        XCTAssertTrue(adPosted.exists, "Ad posted time is not displayed")
        XCTAssertTrue(myStoryHeader.exists, "My Story header is not displayed")
        XCTAssertTrue(storyText.exists, "Dog story is not displayed")
        XCTAssertTrue(quickInfoHeader.exists, "Quick Info header is not displayed")
        XCTAssertTrue(quickInfoAge.exists, "Quick Info Age is not displayed")
        XCTAssertTrue(quickInfoColor.exists, "Quick Info Color is not displayed")
        XCTAssertTrue(quickInfoWeight.exists, "Quick Info Weight is not displayed")
        XCTAssertTrue(ownerInfoHeader.exists, "Owner Info header is not displayed")
        XCTAssertTrue(ownerImage.exists, "Owner image is not displayed")
        XCTAssertTrue(ownerName.exists, "Owner name is not displayed")
        XCTAssertTrue(ownerBio.exists, "Owner bio is not displayed")
        XCTAssertTrue(msgButton.exists, "Message button is not displayed")
        XCTAssertTrue(adoptMeButton.exists, "Adopt Me button is not displayed")
    }
    
    func tapBackNavArrow() {
        backNavArrow.tap()
    }

}
