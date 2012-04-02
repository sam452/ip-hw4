//
//  helloWorld_04ViewController.m
//  helloWorld_04
//
//  Created by Sam on 3/30/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "helloWorld_04ViewController.h"

@implementation helloWorld_04ViewController
@synthesize label, Kant;

- (void)dealloc
{
    [label release];
    [Kant release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidUnload
{
    [label release];
    label = nil;
    [Kant release];
    Kant = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)button:(id)sender {
    label.text = @"Hell, jars I'm back";
    UIImage *imageSource = [UIImage imageNamed:@"kantStair.png"];
    Kant.image = imageSource;
}
@end
