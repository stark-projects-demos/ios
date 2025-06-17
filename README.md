# Stark iOS Sample

A simple demo iOS app that showcases how to use the [Stark Accessibility for iOS](https://github.com/stark-contrast/stark-ios) library to detect and report accessibility issues in your app's UI. This project intentionally includes common accessibility problems (such as poor color contrast, small touch targets, and missing accessibility labels) to help demonstrate the capabilities of the Stark library and how results can be sent to Stark for further analysis.

## Overview

This repository is designed for:

- Demonstrating the integration of the Stark Accessibility for iOS library in a SwiftUI app
- Providing a playground for running accessibility scans and sending results to Stark

## Setup

1. **Clone the repository:**
   ```sh
   git clone https://github.com/stark-projects-demos/ios.git
   ```
2. **Open the project in Xcode.**
3. **Install dependencies:**
   - The app uses [Stark Accessibility for iOS](https://github.com/stark-contrast/stark-ios) via Swift Package Manager.
   - If not already present, add the package in Xcode: `File > Swift Packages > Add Package Dependency` and use the URL `https://github.com/stark-contrast/stark-ios.git`.

## Running the App

1. Build and run the app on a simulator or physical device (iOS 17+ required).
2. Explore the main screen to see intentional accessibility issues.

## Running Accessibility Scans

1. Add or update UI tests in the `Stark iOS SampleUITests` target.
2. Use the `AccessibilityChecker` from the Stark library in your tests. Example:

   ```swift
   import StarkAccessibilityIOS

   func testAccessibility() throws {
       let app = XCUIApplication()
       app.launch()
       let checker = AccessibilityChecker(starkProjectToken: "your-stark-project-token")
       try checker.auditScreen(application: app, scanName: "DemoScreen")
   }
   ```

3. Review the results sent to your Stark dashboard.

## Project Structure

- `Stark iOS Sample/` — Main app code (SwiftUI)
- `Stark iOS SampleUITests/` — UI tests (add your accessibility scans here)

## Stark Accessibility for iOS

For more information, see the [Stark for iOS documentation](https://github.com/stark-contrast/stark-ios).

Looking for the Android version? Check out the [Stark Android Sample](https://github.com/stark-projects-demos/android).

## Contact

For more about Stark, visit the [Stark website](https://www.getstark.co/).
