//
//  ViewController.swift
//  KBDecorationViewExample
//
//  Created by 张鹏 on 2021/6/9.
//

import UIKit
import KBDecorationView

class ViewController: UIViewController {
    
    lazy var toastView: MyRoundView = {
        let messageLabel = UILabel(frame: .zero)
        messageLabel.font = .systemFont(ofSize: 32)
        messageLabel.textColor = .white
        messageLabel.text = "这是一个Toast"
        
        let toastView = MyRoundView(contentView: messageLabel)        
        toastView.backgroundColor = .init(white: 0, alpha: 0.8)
        toastView.contentInsetOffset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        toastView.cornerRadius = 10
//        toastView.maskLayerSetupHandler = { (maskLayer) in
//
//        }
        return toastView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func toastButtonDidTap(_ sender: Any) {
        self.view.addSubview(toastView)
        toastView.translatesAutoresizingMaskIntoConstraints = false
        toastView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        toastView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        print(toastView.contentInset)
    }
}

