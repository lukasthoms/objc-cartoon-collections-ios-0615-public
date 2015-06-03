//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    NSArray *dwarvesToBeRollCalled = @[@"Doc",@"Dopey",@"Bashful"];
    NSLog(@"%@",[self rollCallDwarves:dwarvesToBeRollCalled]);

    NSArray *callsToBeGivenWithHeart = @[@"earth",@"wind"];
    NSLog(@"%@",[self summonCaptainPlanet:callsToBeGivenWithHeart]);

    NSLog(@"%@",[self longPlaneteerCalls:callsToBeGivenWithHeart]);

    NSArray *possibleCheeses= @[@"prosciutto", @"camembert", @"baguette"];
    NSLog(@"%@",[self findTheCheese:possibleCheeses]);

    NSArray *scroogesMoney = @[@"$$",@"$",@"$$$"];
    NSLog(@"%@",[self calculateDollarAmountsWithReceipt:scroogesMoney]);

    
    return YES;
}

- (NSMutableString *)rollCallDwarves:(NSArray *)dwarves
{
    NSMutableString *rollCall = [[NSMutableString alloc] initWithFormat:@"%i. %@", 1, dwarves[1]];
    for (int i = 1; i < dwarves.count; i++) {
            int count = i+1;
            [rollCall appendFormat:@" | %i. %@", count, dwarves[i]];
        }
    return rollCall;
    }



- (NSMutableArray *)summonCaptainPlanet:(NSArray *)planeteerCalls
{
    NSMutableArray *newCalls = [[NSMutableArray alloc] init];
    for (NSString *call in planeteerCalls) {
        NSString *newCall = [[call uppercaseString] stringByAppendingString:@"!"];
        [newCalls addObject:newCall];
        }
    return newCalls;
}



- (NSMutableArray *)longPlaneteerCalls:(NSArray *)planeteerCalls
{
    NSMutableArray *longCalls = [[NSMutableArray alloc] init];
    for (NSString *call in planeteerCalls){
        if ([call length] >= 5) {
            [longCalls addObject:call];
        }
    }
    return longCalls;
}

- (NSString *)findTheCheese:(NSArray *)cheeses
{
    NSString *searchResult = [[NSString alloc] init];
    for (NSString *cheese in cheeses) {
        if ([cheese isEqualToString:@"cheddar"] || [cheese isEqualToString:@"gouda"] || [cheese isEqualToString:@"camembert"]) {
            searchResult = cheese;
            break;
        } else searchResult = nil;
    }
    return searchResult;
}

- (NSMutableArray *)calculateDollarAmountsWithReceipt:(NSArray *)receipt
{
    NSMutableArray *newReceipts = [[NSMutableArray alloc] init];
    for (NSString *dollars in receipt) {
        NSMutableString *newReceipt = [[NSMutableString alloc] initWithFormat:@"%lu", [dollars length]];
        [newReceipts addObject:newReceipt];
    }
    return newReceipts;
}

















- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
