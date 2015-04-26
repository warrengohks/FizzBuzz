//
//  AppDelegate.m
//  FizzBizz
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    [self isBuzzed:14];
    //    [self isFizzed:12];
    
    for (int i = 1; i <= 100; i++) {
        if ([self isBuzzed:i] == true && [self isFizzed:i] == false) {
            NSLog(@"Buzz");
        }
        
        if([self isBuzzed:i] == false && [self isFizzed:i] == true) {
            NSLog(@"Fizz");
        }
        
        if([self isBuzzed:i] == true && [self isFizzed:i] == true) {
            NSLog(@"FizzBuzz");
        }
        
        if([self isBuzzed:i] == false && [self isFizzed:i] == false) {
            NSLog(@"%d", i);
        }
        
    }
    return YES;
}

-(BOOL)isBuzzed:(int)number{
    NSString *numToString = [@(number) stringValue];
    if ((number % 3) == 0) {
        //  NSLog(@"divisible by 3");
        return true;
    }else if ([numToString rangeOfString:@"3"].location != NSNotFound){
        // NSLog(@"contains 3");
        return true;
    }else{
        // NSLog(@"Is not buzzed");
        return false;
    }
}
-(BOOL)isFizzed:(int)number{
    NSString *numToString = [@(number) stringValue];
    if ((number % 5) == 0) {
        //NSLog(@"divisible by 5");
        return true;
    }else if ([numToString rangeOfString:@"5"].location != NSNotFound){
        //NSLog(@"contains 5");
        return true;
    }else{
        // NSLog(@"Is not Fizzed");
        return false;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end