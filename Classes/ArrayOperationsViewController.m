//
//  ArrayOperationsViewController.m
//  ArrayOperations
//
//  Created by Raja on 1/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ArrayOperationsViewController.h"

@implementation ArrayOperationsViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	values = [NSMutableString alloc];
	myArray = [[NSMutableArray alloc] initWithObjects:@"1",nil];
    [super viewDidLoad];
}


- (IBAction) addToArray {
	[myArray addObject:[valueToAdd text]];
	[arrayCount setText:[NSString stringWithFormat:@"%d values found in array.",[myArray count]]];
}

- (IBAction) printArray {
	values = [NSString stringWithFormat:@"%@",myArray];
	[allValues setText:values];
	[arrayCount setText:[NSString stringWithFormat:@"%d values found in array.",[myArray count]]];
}

- (IBAction) removeFromArray {
	int ri = [[removeIndex text] intValue];
	[myArray removeObjectAtIndex:ri];
	[arrayCount setText:[NSString stringWithFormat:@"%d values found in array.",[myArray count]]];
}

- (IBAction) inserValueInArray {
	int ii = [[insertIndex text] intValue];
	[myArray insertObject:[inserValue text] atIndex:ii];
	[arrayCount setText:[NSString stringWithFormat:@"%d values found in array.",[myArray count]]];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[valueToAdd release];
	[allValues release];
	[removeIndex release];
	[arrayCount release];
	[values release];
    [super dealloc];
}

@end
