//
//  MyRoundView.swift
//  KBDecorationViewExample
//
//  Created by 张鹏 on 2021/6/10.
//

import UIKit
import KBDecorationView

class MyRoundView: KBDecorationView {
    
    var cornerRadius: CGFloat = 8
    
    override func setupMaskLayer(_ maskLayer: CAShapeLayer) {
        maskLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
    }
}
