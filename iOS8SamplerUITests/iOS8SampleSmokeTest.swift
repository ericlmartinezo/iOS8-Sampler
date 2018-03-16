//
//  iOS8SampleSmokeTest.swift
//  iOS8SamplerUITests
//
//  Created by Eric Martinez on 8/30/17.
//  Copyright © 2017 Shuichi Tsutsumi. All rights reserved.
//

import Foundation
import XCTest

class iOS8SampleSmokeTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

func testAirborne() {
    
    self.waitForElementToAppear(application.staticTexts["Ruby Annotation"])
    application.tapMenuStaticText(.rubyAnotation)
    application.navigationBars["Ruby Annotation"].buttons["CODE"].tap()

    let rubyAnotationNavBarHeader = application.navigationBars["RubyAnnotationViewController"]
    XCTAssertEqual(rubyAnotationNavBarHeader.exists, true)
    waiting(for: rubyAnotationNavBarHeader)
    rubyAnotationNavBarHeader.tap()

    application.buttons["Ruby Annotation"].tap()
    application.navigationBars["Ruby Annotation"].buttons["iOS8 Sampler"].tap()
    
    }
}
