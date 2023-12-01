//
//  ProductListPageTests.swift
//  Wiggles-iOSUITests
//
//  Created by Paul MacDonald on 30/11/2023.
//

import Foundation
import XCTest

class ProductListPageTests: BaseTest {
    
    let productListPage = ProductListPage()
    let productDetailsPage = ProductDetailsPage()
    
    override func setUp() {
        super.setUp()
    }
    
    func testLaunchApp_productListPageDisplayed() {
        productListPage.verifyPLPIsDisplayed()
    }
    
    func testTapOnFirstAdvert_pdpDisplayed() {
        productListPage.tapOnFirstAdvert()
        productDetailsPage.verifyPDPIsDisplayed()
    }
    
    // TODO: create separate ProductDetailsPageTests test class once more functionality is added
    func testTapPDPBackButton_returnedToPLP() {
        productListPage.tapOnFirstAdvert()
        productDetailsPage.verifyPDPIsDisplayed()
        productDetailsPage.tapBackNavArrow()
        productListPage.verifyPLPIsDisplayed()
    }
}
