//
//  macbingsearcherUITests.swift
//  macbingsearcherUITests
//
//  Created by Varun Somashekar on 12/29/19.
//  Copyright © 2019 Varun Somashekar. All rights reserved.
//

import XCTest

class macbingsearcherUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is probably not how UI Tests are supposed to be used...
        let window = XCUIApplication().windows["Window"]
        window.buttons["Done"].click()
        
        let startButton = window.buttons["Start!"]
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        startButton.click()
        
        let edgeButton = window.buttons["Edge"]
        edgeButton.click()
        edgeButton.click()
        edgeButton.click()
        edgeButton.click()
        
        let mobileButton = window.buttons["Mobile"]
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        mobileButton.click()
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
