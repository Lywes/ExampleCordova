//
//  ANongViewController.m
//  ExampleCordova
//
//  Created by v2 on 16/5/19.
//  Copyright © 2016年 v2. All rights reserved.
//

#import "ANongViewController.h"
@interface ANongViewController ()

@end

@implementation ANongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    ((CDVUIWebViewEngine)self.webViewEngine).
//    ((UIWebView *)self.webView).delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
