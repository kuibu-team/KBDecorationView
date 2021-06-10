//
//  ViewController.m
//  KBDecorationViewExampleObjC
//
//  Created by 张鹏 on 2021/6/10.
//

#import "ViewController.h"
#import <KBDecorationView/KBDecorationView.h>
#import "MyToastView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UIView *myView = [[UIView alloc] initWithFrame:CGRectZero];
//    myView.backgroundColor = UIColor.redColor;
//    [[myView.heightAnchor constraintEqualToConstant:200] setActive:YES];
//    [[myView.widthAnchor constraintEqualToConstant:300] setActive:YES];
//
//    KBDecorationView *decorationView = [[KBDecorationView alloc] initWithContentView:myView];
//    decorationView.backgroundColor = UIColor.grayColor;
//    [self.view addSubview:decorationView];
//
//    decorationView.translatesAutoresizingMaskIntoConstraints = NO;
//    [[decorationView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor] setActive:YES];
//    [[decorationView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
    
    MyToastView *toastView = [[MyToastView alloc] initWithMessage:@"Hello World"];
    [self.view addSubview:toastView];
    toastView.translatesAutoresizingMaskIntoConstraints = NO;
    [[toastView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor] setActive:YES];
    [[toastView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
}


@end
