//
//  iOS8SamplerUITests.swift
//  iOS8SamplerUITests
//
//  Created by Eric Martinez on 2/2/17.
//  Copyright © 2017 Shuichi Tsutsumi. All rights reserved.
//

import XCTest

class iOS8SamplerUITests: XCTestCase {
        
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
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testValidate() {
        application.staticTexts["Invoke Touch ID verification using LocalAuthentication framework."].swipeUp()
        
        application.tapMenuStaticText(.metalUniformStream)
        application.navigationBars["Metal Uniform Stream"].buttons["iOS8 Sampler"].tap()
    }

    func testBoth()   {
        
        application.tapMenuStaticText(.audioEffects)
        application.navigationBars["Audio Effects"].buttons["iOS8 Sampler"].tap()

        application.tapMenuStaticText(.newImageFilters)
        application.navigationBars["New Image Filters"].buttons["iOS8 Sampler"].tap()
        
        application.tapMenuStaticText(.customFilters)
        application.navigationBars["CustomFilters"].buttons["iOS8 Sampler"].tap()

        application.tapMenuStaticText(.metalUniformStream)
        application.navigationBars["Metal Uniform Stream"].buttons["iOS8 Sampler"].tap()

        application.tapMenuStaticText(.sceneKit)
        application.navigationBars["SceneKit"].buttons["iOS8 Sampler"].tap()
        
        application.tapMenuStaticText(.touchId)
        application.navigationBars["Touch ID"].buttons["iOS8 Sampler"].tap()
        
        application.tapMenuStaticText(.metalBasic)
        application.navigationBars["Metal Basic"].buttons["iOS8 Sampler"].tap()
        
        application.staticTexts["Invoke Touch ID verification using LocalAuthentication framework."].swipeUp()
        
        application.tapMenuStaticText(.webKit)
        application.navigationBars["WebKit"].buttons["iOS8 Sampler"].tap()
        
        application.tapMenuStaticText(.pedometer)
        application.navigationBars["Pedometer"].buttons["iOS8 Sampler"].tap()
    }
    
    func testSecond() {
        
        self.waitForElementToAppear(application.staticTexts["Ruby Annotation"])
        application.tapMenuStaticText(.rubyAnotation)
        application.navigationBars["Ruby Annotation"].buttons["CODE"].tap()
        sleep(5)
//        self.waitForElementToAppear(application.navigationBars["RubyAnnotationViewController"])
        application.navigationBars["RubyAnnotationViewController"].tap()
        application.buttons["Ruby Annotation"].tap()
        application.navigationBars["Ruby Annotation"].buttons["iOS8 Sampler"].tap()
    }

    func testThird() {
        let application = XCUIApplication()
        let tablesQuery = application.tables
        
        tablesQuery.staticTexts["UIAlertController"].tap()
        application.buttons["ActionSheet"].tap()
        application.buttons["Alert"].tap()
        application.buttons["ALERT"].tap()
//        app.alerts["TITLE"].buttons["CANCEL"].tap()
        application.alerts["TITLE"].typeText("Pendejo")
        application.buttons["CANCEL"].tap()
        application.navigationBars["UIAlertController"].buttons["CODE"].tap()
//        sleep(8)
        self.waitForElementToAppear(application.navigationBars["AlertViewController"])
        
        application.buttons["UIAlertController"].tap()
        self.waitForElementToAppear(application.staticTexts["UIAlertController"])
//        application.navigationBars["AlertViewController"].children(matching: .button).matching(identifier: "Back").element(boundBy: 0).tap()
//        sleep(2)
//        self.waitForElementToAppear(application.navigationBars["UIAlertController"])
//        application.navigationBars["UIAlertController"].children(matching: .button).matching(identifier: "Back").element(boundBy: 0).tap()
    }
    
    func testFour() {
        let application = XCUIApplication()
    
    application.tables.staticTexts["New filters of CIFilter such as CIGrassDistortion, CIDivideBlendMode, ..."].tap()
    application.pickerWheels["Original"].swipeUp()
        
    }
    
}









