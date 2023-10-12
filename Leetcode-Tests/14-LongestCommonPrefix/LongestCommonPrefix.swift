//
//  LongestCommonPrefix.swift
//  Leetcode-Tests
//
//  Created by Jamil Nawaz on 12/10/2023.
//

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var loopCounter = strs.count - 1
        var toMatch = strs[0]
        
        while (loopCounter != 0) {
            var wordToken = strs[loopCounter]
            var toMatchContainsWord = false
            
            while (!toMatchContainsWord) {
                if wordToken == "" {
                 return ""
               }
               else if !toMatch.starts(with: wordToken) {
                   wordToken = String(describing: wordToken.dropLast())
               } else {
                   toMatch = wordToken
                   toMatchContainsWord = true
               }
           }
            
            loopCounter -= 1
        }
        
        return toMatch
    }
}
