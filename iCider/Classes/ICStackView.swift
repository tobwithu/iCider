//
//  ICStackView.swift
//  iCider
//
//  Created by tobwithu on 2020/10/12.
//

import Foundation

open class ICStackView:UIStackView{
    /// Without UIViewController reference, event does not work.
    var vcList = Array<UIViewController>()
    
    open func addView(_ viewController:UIViewController){
        addArrangedSubview(viewController.view)
        vcList.append(viewController)
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
        vcList.removeAll()
    }
}
