//
//  ViewController.m
//  ExampleCordova
//
//  Created by v2 on 16/5/17.
//  Copyright © 2016年 v2. All rights reserved.
//

#import "ViewController.h"
#import "ANongViewController.h"
//#import <Cordova/CDVUIWebViewEngine.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.webViewEngine = self;
//    id engine = self.webViewEngine;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(push) name:@"push" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController setNavigationBarHidden:YES];
    self.edgesForExtendedLayout = UIRectEdgeNone;
}
- (void)push
{
    ANongViewController *anong = [[ANongViewController alloc]init];
//    anong.wwwFolderName = @"http://mtshop.v2gogo.com/#";
//    anong.startPage = @"http://192.168.1.2:8080/GuiA/page/index.html";
    anong.startPage = @"http://mtshop.v2gogo.com/#";
//    anong.startPage = @"http://www.baidu.com/";
//    anong.wwwFolderName = @"http://192.168.1.2:8080/GuiA/www";
    [self.navigationController pushViewController:anong animated:YES];
}

@end
