//
//  ICStackView.swift
//  iCider
//
//  Created by tobwithu on 2020/10/12.
//

import Foundation

open class ICStackView:UIStackView{
    /// Without UIViewController reference, event does not work.
    open var children = Array<UIViewController>()
    
    open func addView(_ viewController:UIViewController){
        addArrangedSubview(viewController.view)
        children.append(viewController)
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
        children.removeAll()
    }
    
    open func addPadding(_ size:CGFloat){
        let v = UIView()
        let anchor = axis == .horizontal ? v.widthAnchor : v.heightAnchor
        anchor.constraint(equalToConstant: size).isActive = true
        addArrangedSubview(v)
    }
}
