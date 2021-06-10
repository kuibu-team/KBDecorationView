//
//  KBDecorationView.swift
//  KBDecorationView
//
//  Created by 张鹏 on 2021/6/9.
//

import UIKit

/// 装饰视图
@objc
open class KBDecorationView: UIView {
    
    // MARK: - Public Properties
    
    /// 内容视图
    @objc
    public private(set) var contentView: UIView
    
    /// 内容内边距
    @objc
    open var contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) {
        didSet {
            relayoutContentView()
        }
    }
    
    /// 配置遮罩层的处理，与`setupMaskLayer`方法二选一，优先采用`maskLayerSetupHandler`
    @objc
    public var maskLayerSetupHandler: ((_ maskLayer: CAShapeLayer) -> Void)?
    
    
    // MARK: - Private Properties
    
    /// 遮罩层
    private var maskLayer = CAShapeLayer()
    
    /// 内容边距的约束
    private var contentViewEdgeConstraints = [NSLayoutConstraint]()
    
    
    // MARK: - Life Cycle Methods
    
    /// 初始化方法
    /// - Parameter contentView: 内容的View
    @objc
    public init(contentView: UIView) {
        self.contentView = contentView
        super.init(frame: .zero)
        
        setupSubviews()
    }
    
    /// 初始化方法
    public required init?(coder: NSCoder) {
        self.contentView = UIView()
        super.init(coder: coder)
        
        setupSubviews()
    }
    
    /// 页面布局
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        if let setupHandler = maskLayerSetupHandler {
            setupHandler(maskLayer)
        } else {
            setupMaskLayer(maskLayer)
        }
    }
    
    
    // MARK: - Subview Hooks
    
    /// 配置遮罩层
    @objc
    open func setupMaskLayer(_ maskLayer: CAShapeLayer) {
        maskLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: bounds.size.height/8.0).cgPath
    }
}

// MARK: - Helper Methods
extension KBDecorationView {
    
    /// 配置子视图
    func setupSubviews() {
        self.backgroundColor = UIColor(white: 0, alpha: 0.618)
        self.addSubview(contentView)

        maskLayer.backgroundColor = UIColor.black.cgColor
        self.layer.mask = maskLayer

        relayoutContentView()
    }
    
    /// 重新布局contentView
    func relayoutContentView() {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        // 清除旧的约束
        for constraint in contentViewEdgeConstraints {
            self.removeConstraint(constraint)
        }
        contentViewEdgeConstraints.removeAll()
        
        // 添加新的约束
        contentViewEdgeConstraints.append(contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: contentInset.left))
        contentViewEdgeConstraints.append(contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -contentInset.right))
        contentViewEdgeConstraints.append(contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -(contentInset.bottom)))
        contentViewEdgeConstraints.append(contentView.topAnchor.constraint(equalTo: self.topAnchor, constant: contentInset.top))
        
        contentViewEdgeConstraints.forEach { $0.isActive = true }
    }
}
