//
//  Extensions.swift
//  iCider
//
//  Created by tobwithu on 2020/10/10.
//

import Foundation

extension StringProtocol {
    public func indexOf<S: StringProtocol>(_ string: S, options: String.CompareOptions = []) -> Int {
        if let idx = range(of: string, options: options)?.lowerBound{
            return distance(from: self.startIndex, to: idx)
        }
        return -1
    }
}

extension String{
    public func substring(_ startIndex:Int, _ endIndex:Int) -> String{
        let start = index(self.startIndex, offsetBy: startIndex)
        let end = index(self.startIndex, offsetBy: endIndex)
        return String(self[start..<end])
    }
    
    public func substring(_ startIndex:Int) -> String{
        return substring(startIndex, count)
    }
}
