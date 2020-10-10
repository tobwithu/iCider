//
//  ICEmbeddedViewController.swift
//  iCider
//
//  Created by tobwithu on 2020/10/10.
//

import Foundation

open class ICEmbeddedViewController:UIViewController{
    /// Show/Hide embedded view with its ContainerView
    open var isHidden:Bool{
        get{
            return view.superview?.isHidden ?? true
        }
        set{
            view.superview?.isHidden = newValue
        }
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
