//
//  ICScrollView.swift
//  iCider
//
//  Created by tobwithu on 2020/10/10.
//

import Foundation

/// Fix scroll problem with UIButton in UIScrollView
open class ICScrollView:UIScrollView{
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        canCancelContentTouches = true
    }
    
    open override func touchesShouldCancel(in view: UIView) -> Bool {
        if view is UIButton {
            return true
        }
        return super.touchesShouldCancel(in: view)
    }
}
