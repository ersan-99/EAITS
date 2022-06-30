//
//  Bachelor_TLSUITestsLaunchTests.swift
//  Bachelor_TLSUITests
//
//  Created by test on 29.06.22.
//

import XCTest

class Bachelor_TLSUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        false
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        //While the Simulator is running, it try to connect so Server. So we wait (50 sec) until the connection is finished
        let exp = expectation(description: "Test after 50 seconds")
         let result = XCTWaiter.wait(for: [exp], timeout: 50.0)
         if result == XCTWaiter.Result.timedOut {
             XCTAssert(true)
         } else {
             XCTFail("Delay interrupted")
         }
        
        
       //End of waiting
       //rest of code is not important

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
