/*
 * AppController.j
 * PersonBindingDemo
 *
 * Created by You on April 5, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "Person.j"
@import "PersonValueTransformer.j"

@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
	CPMutableArray persons;
}

-(id)init
{
	persons = [[CPMutableArray alloc] init];
	
	for (var i = 100 - 1; i >= 0; i--){
		// This is called when the application is done loading.
		var me = [[Person alloc] init];
		[me setValue:@"John" + i forKey:@"firstName"];
		[me setValue:@"Brown" + i forKey:@"lastName"];
		[me setValue:[CPNumber numberWithFloat:i] forKey:@"age"];
		[me setValue:[CPNumber numberWithBool:(i % 2 == 0)] forKey:@"isMarried"];
		[persons addObject:me];

	};
	
	return self;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things. 
    

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullBridge:YES];
}



@end
