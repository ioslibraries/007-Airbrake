//
//  ILTestViewController.m
//  CrashTest
//
//  Created by jeremy Templier on 29/03/12.
//  Copyright (c) 2012 particulier. All rights reserved.
//

#import "ILTestViewController.h"
#import "GCAlertView.h"

@interface ILTestViewController ()

@end

@implementation ILTestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)crashPressed:(id)sender {
	NSArray *array = [NSArray array];
    [array objectAtIndex:NSUIntegerMax];
}
@end
