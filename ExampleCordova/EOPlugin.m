//
//  EOPlugin.m
//  ExampleCordova
//
//  Created by v2 on 16/5/17.
//  Copyright © 2016年 v2. All rights reserved.
//

#import "EOPlugin.h"

@implementation EOPlugin

- (void)myMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* myarg = [command.arguments objectAtIndex:0];
    if (myarg != nil) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Arg was null"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"push" object:nil];
}
@end
