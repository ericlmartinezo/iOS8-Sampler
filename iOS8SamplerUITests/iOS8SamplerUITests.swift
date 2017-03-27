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
        _ = XCUIApplication()
        XCUIApplication().tables.staticTexts["Demo using a data buffer to set uniforms for the vertex and fragment shaders."].tap()
        
    }


//    func testa() {
//    let app = XCUIApplication()
//    app.tables.staticTexts["New filters of CIFilter such as CIGrassDistortion, CIDivideBlendMode, ..."].tap()
//    app.navigationBars["New Image Filters"].buttons["iOS8 Sampler"].tap()
//
//  }
//    func testAppb() {
//    let app = XCUIApplication()
//    app.tables.staticTexts["Distortion and Delay effect for audio using AVAudioEngine."].tap()
//    app.navigationBars["Audio Effects"].buttons["iOS8 Sampler"].tap()
//  }
//    
//    func testAppc() {
//        let app = XCUIApplication()
//        app.tables.staticTexts["Custom CIFilter examples using CIKernel."].tap()
//        app.navigationBars["CustomFilters"].buttons["iOS8 Sampler"].tap()
//    }
    
    func testAll() {
        let app = XCUIApplication()
        let tablesQuery = app.tables
        
        app.tables.staticTexts["Distortion and Delay effect for audio using AVAudioEngine."].tap()
        app.navigationBars["Audio Effects"].buttons["iOS8 Sampler"].tap()
        app.tables.staticTexts["New filters of CIFilter such as CIGrassDistortion, CIDivideBlendMode, ..."].tap()
        app.navigationBars["New Image Filters"].buttons["iOS8 Sampler"].tap()
        tablesQuery.staticTexts["CustomFilters"].tap()
        app.navigationBars["CustomFilters"].buttons["iOS8 Sampler"].tap()
        tablesQuery.staticTexts["Demo using a data buffer to set uniforms for the vertex and fragment shaders."].tap()
        app.navigationBars["Metal Uniform Stream"].children(matching: .button).matching(identifier: "Back").element(boundBy: 0).tap()
        tablesQuery.staticTexts["SceneKit"].tap()
        app.navigationBars["SceneKit"].buttons["iOS8 Sampler"].tap()
        //tablesQuery.staticTexts["HealthKit"].tap()
        //app.navigationBars["HealthKit"].buttons["iOS8 Sampler"].tap()
        tablesQuery.staticTexts["Touch ID"].tap()
        app.navigationBars["Touch ID"].buttons["iOS8 Sampler"].tap()
        tablesQuery.staticTexts["Metal Basic"].tap()
        app.navigationBars["Metal Basic"].buttons["iOS8 Sampler"].tap()
        tablesQuery.staticTexts["Invoke Touch ID verification using LocalAuthentication framework."].swipeUp()
        tablesQuery.staticTexts["WebKit"].tap()
        app.navigationBars["WebKit"].buttons["iOS8 Sampler"].tap()
//        tablesQuery.staticTexts["Browsing Example using WKWebView"].swipeUp()
//        tablesQuery.staticTexts["Pedometer"].tap()
//        app.navigationBars["Pedometer"].buttons["iOS8 Sampler"].tap()
    }
}







