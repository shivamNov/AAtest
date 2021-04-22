//
//  AATestTests.swift
//  AATestTests
//
//  Created by Shivam Agrawal on 4/22/21.
//

import XCTest
@testable import AATest

class AATestTests: XCTestCase {

    var sut = ViewController()
    
    override func setUp() {
        super.setUp()
        self.sut = ViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_correct_count() throws {
        let result = sut.readTextFile(fileName: "AmericanAirlinesGroup")
        XCTAssertEqual(result.count, 239, "count is greater than 10")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func test_Value_exists() {
        let result = sut.readTextFile(fileName: "AmericanAirlinesGroup")
        XCTAssertEqual(result.keys.contains("American"), true, "American Keyword is not Present")
    }

}
