//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//Integers for multiplied and divided methods
static const int multiple=8;
static const int divisor=6;

            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Set iterate count
    [self iterateCount:4];
    
    return YES;
}

//describe iterateCount method, decrease by one every iteration
-(void) iterateCount:(int)decrementNumber {
    if (decrementNumber>0) {
        NSLog(@"Iterate %d", decrementNumber);
        decrementNumber--;
        [self iterateCount:decrementNumber];
        
    }
    if (!decrementNumber) {
        int multipliedNumber = 2;
        int product = [self multiplied:multipliedNumber];
        NSLog(@"Multiplied %d by %d to get %d.", multiple, multipliedNumber, product);
        
        float quotient = [self divided:product];
        NSLog(@"Divided %d by %d to get %f.", product, divisor, quotient);
        
    }
}

-(int) multiplied:(int)multipliedNumber {
    return multiple / multipliedNumber;
}

-(float) divided:(float)dividedNumber {
    return dividedNumber / divisor;
}
@end
