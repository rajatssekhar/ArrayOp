//
//  ArrayOperationsViewController.h
//  ArrayOperations
//
//  Created by Raja on 1/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArrayOperationsViewController : UIViewController {
	NSMutableString *values;
	NSMutableArray *myArray;
	IBOutlet UITextField *valueToAdd;
	IBOutlet UITextField *allValues;
	IBOutlet UILabel *arrayCount;
	IBOutlet UITextField *removeIndex;
	IBOutlet UITextField *insertIndex;
	IBOutlet UITextField *inserValue;
}

- (IBAction) addToArray;
- (IBAction) printArray;
- (IBAction) removeFromArray;
- (IBAction) inserValueInArray;

@end

