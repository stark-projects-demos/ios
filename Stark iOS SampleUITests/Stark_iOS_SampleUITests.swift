//
//  Stark_iOS_SampleUITests.swift
//  Stark iOS SampleUITests
//

import XCTest
import StarkAccessibilityIOS

final class Stark_iOS_SampleUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    @MainActor
    func testAccessibility() throws {
        let app = XCUIApplication()
                app.launch()

                // Create a checker and audit the screen
                let checker = AccessibilityChecker(starkProjectToken: "stark_••••••••••••••••••••••••••••••••")
                try checker.auditScreen(application: app, scanName: "Demo iOS App")
    }
}
