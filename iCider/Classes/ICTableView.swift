//
//  ICTableView.swift
//  iCider
//
//  Created by tobwithu on 2020/10/10.
//

import Foundation

/**
 Self sizing table view to fit contents
 */

open class ICTableView: UITableView{
    open override var contentSize: CGSize{
        didSet{
            invalidateIntrinsicContentSize()
        }
    }
    open override var intrinsicContentSize: CGSize{
        return contentSize
    }
}
