//
//  ArrayOperationsAppDelegate.h
//  ArrayOperations
//
//  Created by Raja on 1/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ArrayOperationsViewController;

@interface ArrayOperationsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ArrayOperationsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ArrayOperationsViewController *viewController;

@end

