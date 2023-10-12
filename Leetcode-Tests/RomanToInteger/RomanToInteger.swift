//
//  RomanToInteger.swift
//  Leetcode-Tests
//
//  Created by Jamil Nawaz on 10/10/2023.
//

import Foundation

class RomanToIntegerSolution {
    
    func romanToInt(_ s: String) -> Int {
        var intToReturn = 0
        var romanString: String = s
        
        while (romanString.count != 0) {
            let lastIndex = romanString.index(before: romanString.endIndex)
            var onePrior: String.Index? = nil
            
            if (romanString.count > 1) {
                onePrior = romanString.index(before: lastIndex)
            }
            
            switch (romanString.last) {
            case "V":
                if let onePriorIndex = onePrior {
                    if romanString[onePriorIndex] == "I" {
                        intToReturn += 4
                        romanString = String(describing: romanString.dropLast())
                    } else {
                        intToReturn += 5
                    }
                } else {
                    intToReturn += 5
                }
            case "X":
                if let onePriorIndex = onePrior {
                    if romanString[onePriorIndex] == "I" {
                        intToReturn += 9
                        romanString = String(describing: romanString.dropLast())
                    } else {
                        intToReturn += 10
                    }
                } else {
                    intToReturn += 10
                }
                    
            case "L":
                
                if let onePriorIndex = onePrior {
                    if romanString[onePriorIndex] == "X" {
                        intToReturn += 40
                        romanString = String(describing: romanString.dropLast())
                    } else {
                        intToReturn += 50
                    }
                } else {
                    intToReturn += 50
                }
                
            case "C":
                if let onePriorIndex = onePrior {
                    if romanString[onePriorIndex] == "X" {
                        intToReturn += 90
                        romanString = String(describing: romanString.dropLast())
                    } else {
                        intToReturn += 100
                    }
                } else {
                    intToReturn += 100
                }
                
            case "D":
                
                if let onePriorIndex = onePrior {
                    if romanString[onePriorIndex] == "C" {
                        intToReturn += 400
                        romanString = String(describing: romanString.dropLast())
                    } else {
                        intToReturn += 500
                    }
                } else {
                    intToReturn += 500
                }
                
            case "M":
                
                if let onePriorIndex = onePrior {
                    if romanString[onePriorIndex] == "C" {
                        intToReturn += 900
                        romanString = String(describing: romanString.dropLast())
                    } else {
                        intToReturn += 1000
                    }
                } else {
                    intToReturn += 1000
                }
            case "I":
                intToReturn += 1
                
            case .none:
                break
                // do nothing
            case .some(_):
                // do nothing
                break
            }
            
            romanString = String(describing: romanString.dropLast())
        }
        return intToReturn
    }
}
