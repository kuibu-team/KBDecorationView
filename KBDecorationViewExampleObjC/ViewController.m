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
    
    MyToastView *toastView = [[MyToastView alloc] initWithMessage:@"Hello World"];
    [self.view addSubview:toastView];
    toastView.translatesAutoresizingMaskIntoConstraints = NO;
    [[toastView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor] setActive:YES];
    [[toastView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
}


@end
