//
//  Item.swift
//  Leetcode-Tests
//
//  Created by Jamil Nawaz on 10/10/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
