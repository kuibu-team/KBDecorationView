//
//  ViewController.swift
//  KBDecorationViewExample
//
//  Created by 张鹏 on 2021/6/9.
//

import UIKit
import KBDecorationView

class ViewController: UIViewController {
    
    lazy var toastView: KBDecorationView = {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
        messageLabel.font = .systemFont(ofSize: 32)
        messageLabel.textColor = .white
        messageLabel.text = "这是一个Toast"
        
        let toastView = MyRoundView(contentView: messageLabel)
        toastView.backgroundColor = .init(white: 0, alpha: 0.8)
        toastView.contentInsetsOffset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
//        toastView.cornerRadius = 10

        return toastView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func toastButtonDidTap(_ sender: Any) {
        toastView.layer.bounds = CGRect(x: 0, y: 0, width: toastView.intrinsicContentSize.width, height: toastView.intrinsicContentSize.height)
        toastView.layer.position = self.view.center

        self.view.addSubview(toastView)
        
        print(toastView.frame)
    }
    
    @IBAction func dynamicButtonDidTap(_ sender: Any) {
        toastView.contentInsetsOffset = UIEdgeInsets(top: 30, left: 30, bottom: 0, right: 0)
        toastView.layer.bounds = CGRect(x: 0, y: 0, width: toastView.intrinsicContentSize.width, height: toastView.intrinsicContentSize.height)
        
        // 为了触发UIView的layoutSubviews方法，修改layer.bounds不会触发
        toastView.frame = toastView.frame
        
        print(toastView.frame)
    }
}

