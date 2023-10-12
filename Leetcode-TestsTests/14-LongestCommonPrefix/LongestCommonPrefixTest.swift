//
//  LongestCommonPrefixTest.swift
//  Leetcode-TestsTests
//
//  Created by Jamil Nawaz on 12/10/2023.
//

import XCTest
@testable import Leetcode_Tests

final class LongestCommonPrefixTest: XCTestCase {

    func testLongestCommonPrefix() {
        
        var arrayOfStringArrays: [[String]] = []
//        arrayOfStringArrays.append(["flower", "flow", "flight"])
        
//        arrayOfStringArrays.append(["dog", "racecar", "car"])
        
        arrayOfStringArrays.append(["reflower", "flow", "flight"])
        
        arrayOfStringArrays.forEach { array in
            let longestCommonPrefix = Solution().longestCommonPrefix(array)
            print(longestCommonPrefix)
        }
    }

}
