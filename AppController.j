/*
 * AppController.j
 * PersonBindingDemo
 *
 * Created by You on April 5, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "Person.j"

@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
	var me;
}

-(id)init
{
	// This is called when the application is done loading.
	me = [[Person alloc] init];
	[me setValue:@"John" forKey:@"name"];
	[me setValue:[CPNumber numberWithFloat:1.5] forKey:@"age"];
	[me setValue:[CPNumber numberWithBool:YES] forKey:@"isMarried"];
	
	return self;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
//	me.name = @"bla";
	
	[me setValue:@"bla" forKey:@"name"];
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
