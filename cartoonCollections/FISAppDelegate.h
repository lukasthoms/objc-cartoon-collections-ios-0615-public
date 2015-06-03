//
//  FISAppDelegate.h
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSMutableString *)rollCallDwarves:(NSArray *)dwarves;
-(NSMutableArray *)summonCaptainPlanet:(NSArray *)planeteerCalls;
-(NSMutableArray *)longPlaneteerCalls:(NSArray *)planeteerCalls;
-(NSString *)findTheCheese:(NSArray *)cheeses;
-(NSArray *)calculateDollarAmountsWithReceipt:(NSArray *)receipt;


@end
