//
//  Array+Only.swift
//  Memorize
//
//  Created by saroj maharjan on 4/5/2023.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}

extension Array {
    /// Picks 'n' random Elements (partial Fisher-Yates shuffle approach)
    subscript(randomPick n: Int) -> [Element] {
        var copy = self
        for i in stride(from: count - 1, to: count - n - 1, by: -1)
        {
            copy.swapAt(i, Int(arc4random_uniform(UInt32(i + 1))))
            
        }
        return Array(copy.suffix(n))
    }
}
