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
                setenv("STARK_API_URL", "http://localhost:3000/api/automated-scan/result/ios", 1)
                let checker = AccessibilityChecker(starkProjectToken: "stark_1452216e48434f07bd0cf4f6f6502e56")
                try checker.auditScreen(application: app, scanName: "ios-instrumentation")
    }
}
