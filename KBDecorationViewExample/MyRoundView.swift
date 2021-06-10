//
//  MyRoundView.swift
//  KBDecorationViewExample
//
//  Created by 张鹏 on 2021/6/10.
//

import UIKit
import KBDecorationView

class MyRoundView: KBDecorationView {
    
    override var contentInset: UIEdgeInsets {
        get {
            return UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        }
        set {
            
        }
    }
    
    var cornerRadius: CGFloat = 8
    
    override func setupMaskLayer(_ maskLayer: CAShapeLayer) {
        maskLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
    }
}
