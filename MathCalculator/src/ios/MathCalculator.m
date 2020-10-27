/********* MathCalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalculator : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
@end

@implementation MathCalculator
- (void)add:(CDVInvokedUrlCommand*)command{

    CDVPlugResult* plugInResult = nil;
    NSnumber *param1 = [[Command.arguments objectAtIndex: 0] valueForKey: @"param1"];
    NSnumber *param2 = [[Command.arguments objectAtIndex: 0] valueForKey: @"param2"];
    if(param1  >= 0 && param2 >= 0){
        *NSString total = (param1 + param2);
        plugInResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    }else{
        plugInResult =[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.CommandDelegate sendPluginResult: plugInResult callbackId:command.callbackId];
}

@end
