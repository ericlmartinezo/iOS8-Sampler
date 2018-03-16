//
//  MainMenuOptionsHelper.swift
//  iOS8SamplerUITests
//
//  Created by Eric Martinez on 8/29/17.
//  Copyright © 2017 Shuichi Tsutsumi. All rights reserved.
//

import Foundation
import XCTest

let application = XCUIApplication()

enum MainMenuButtons: String {
    case audioEffects = "Audio Effects"
    case newImageFilters = "New Image Filters"
    case customFilters = "CustomFilters"
    case metalBasic = "Metal Basic"
    case metalUniformStream = "Metal Uniform Stream"
    case sceneKit = "SceneKit"
    case healthKit = "HealthKit"
    case touchId = "Touch ID"
    case visualEffects = "Visual Effects"
    case webKit = "WebKit"
    case tableSeparatorEfect = "Table Separator Effect"
    case rubyAnotation = "Ruby Annotation"
    case pedometer = "Pedometer"
    
    func mainMenuStaticText(in menuscreen: XCUIApplication) -> XCUIElement? {
        return menuscreen.staticTexts[self.rawValue]
    }
}

extension XCUIApplication {
    func tapMenuStaticText(_ openOption: MainMenuButtons ) {
        guard let element = openOption.mainMenuStaticText(in: self) else {
            XCTFail("failed to tap menu option")
            return
        }
        element.tap()
    }
}
