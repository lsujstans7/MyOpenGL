//
//  OpenGLContextViewController.m
//  MyOpenGL
//
//  Created by Johnathan Stansbury on 10/6/12.
//  Copyright (c) 2012 LSU. All rights reserved.
//

#import "OpenGLContextViewController.h"

@interface OpenGLContextViewController ()

@end

@implementation OpenGLContextViewController
@synthesize mainLabel = _mainLabel;
@synthesize filename = _filename;

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
	
    self.mainLabel.text = self.filename;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
