//
//  Extensions.swift
//  iCider
//
//  Created by tobwithu on 2020/10/10.
//

import Foundation

extension UIStackView {
    
    open func addView(_ viewController:UIViewController){
        addArrangedSubview(viewController.view)
    }
    
    open func removeAllViews() {
        
        let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }
        
        // Deactivate all constraints
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
        
        // Remove the views from self
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
}

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
