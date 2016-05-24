//
//  EOPlugin.h
//  ExampleCordova
//
//  Created by v2 on 16/5/17.
//  Copyright © 2016年 v2. All rights reserved.
//

#import <Cordova/CDVPlugin.h>

@interface EOPlugin : CDVPlugin

- (void)myMethod:(CDVInvokedUrlCommand*)command;
@end
