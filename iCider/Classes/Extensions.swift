//
//  Extensions.swift
//  iCider
//
//  Created by tobwithu on 2020/10/10.
//

import Foundation

extension String{
    public func substring(_ startIndex:Int, _ endIndex:Int) -> String{
        let start = index(self.startIndex, offsetBy: startIndex)
        let end = index(self.startIndex, offsetBy: endIndex)
        return String(self[start..<end])
    }
    
    public func substring(_ startIndex:Int) -> String{
        return substring(startIndex, count - startIndex)
    }
}
