//
//  MyToastView.m
//  KBDecorationViewExampleObjC
//
//  Created by 张鹏 on 2021/6/10.
//

#import "MyToastView.h"

@interface MyToastView ()

@property (nonatomic, strong) KBDecorationView *decorationView;

@end

@implementation MyToastView

- (instancetype)initWithMessage:(NSString *)message {
    if (self = [super initWithFrame:CGRectZero]) {
        UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        messageLabel.textColor = UIColor.whiteColor;
        messageLabel.text = message;
        messageLabel.font = [UIFont systemFontOfSize:30];
        
        __weak typeof (self) weakSelf = self;
        self.decorationView = [[KBDecorationView alloc] initWithContentView:messageLabel
                                                              contentInsets:UIEdgeInsetsMake(30, 30, 30, 30)];
        
        self.decorationView.maskLayerSetupHandler = ^(CAShapeLayer * _Nonnull maskLayer) {
            UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:weakSelf.decorationView.bounds cornerRadius:10];
            maskLayer.path = path.CGPath;
        };
        
        [self addSubview:self.decorationView];
        self.decorationView.translatesAutoresizingMaskIntoConstraints = NO;
        [[self.decorationView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
        [[self.decorationView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
        [[self.decorationView.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
        [[self.decorationView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    }
    return self;
}

@end
