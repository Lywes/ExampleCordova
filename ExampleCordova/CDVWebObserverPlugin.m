//
//  CDVWebObserverPlugin.m
//  vt
//
//  Created by v2 on 16/5/20.
//  Copyright © 2016年 李红(410139419@qq.com). All rights reserved.
//

#import "CDVWebObserverPlugin.h"

@implementation CDVWebObserverPlugin

- (BOOL)shouldOverrideLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
    [[NSNotificationCenter defaultCenter] postNotificationName:CDVPluginWebShouldStartLoadNotification object:request];
    return YES;
}
@end
