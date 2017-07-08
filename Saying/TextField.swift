//
//  TextField.swift
//  Saying
//
//  Created by snow on 2017. 7. 8..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import Foundation

@IBDesignable
class SayingTextField: UITextField {
    
    @IBInspectable var xInset: CGFloat = 0
    @IBInspectable var yInset: CGFloat = 0
    
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: xInset, dy: yInset)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
    
}
