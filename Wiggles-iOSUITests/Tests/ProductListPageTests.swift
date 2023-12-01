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
    
    override func setUp() {
        super.setUp()
    }
    
    func testLaunchApp_productListPageDisplayed() {
        productListPage.verifyPLPIsDisplayed()
    }
}
