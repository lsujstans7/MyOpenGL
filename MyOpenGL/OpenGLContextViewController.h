//
//  OpenGLContextViewController.h
//  MyOpenGL
//
//  Created by Johnathan Stansbury on 10/6/12.
//  Copyright (c) 2012 LSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OpenGLContextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *mainLabel;

@property (strong, nonatomic) NSString *filename;

@end
