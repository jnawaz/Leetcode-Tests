//
//  RomanToInteger.swift
//  Leetcode-TestsTests
//
//  Created by Jamil Nawaz on 10/10/2023.
//

import XCTest
@testable import Leetcode_Tests

final class RomanToIntegerTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRomanToInteger() {
        let testCases = ["III", "LVIII", "MCMXCIV"]
        
        testCases.forEach { testCase in
            let returnedInt = RomanToIntegerSolution().romanToInt(testCase)
            print(returnedInt)
        }
    }

}
