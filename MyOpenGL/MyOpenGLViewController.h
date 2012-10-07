//
//  MyOpenGLViewController.h
//  MyOpenGL
//
//  Created by Johnathan Stansbury on 10/6/12.
//  Copyright (c) 2012 LSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyOpenGLViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *optionsTableView;

@property (nonatomic, strong) NSMutableArray *options;

@end
