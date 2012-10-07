//
//  MyOpenGLViewController.m
//  MyOpenGL
//
//  Created by Johnathan Stansbury on 10/6/12.
//  Copyright (c) 2012 LSU. All rights reserved.
//

#import "MyOpenGLViewController.h"
#import "optionCell.h"
#import "OpenGLContextViewController.h"

@interface MyOpenGLViewController ()

@end

@implementation MyOpenGLViewController
@synthesize optionsTableView;
@synthesize options = _options;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.options = [NSMutableArray array];
    
    [self.options addObject:@"747"];
    [self.options addObject:@"icosa"];
    [self.options addObject:@"rabbit"];
    [self.options addObject:@"square"];
    [self.options addObject:@"teapot"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableview numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%d", self.options.count);
    return self.options.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    optionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"optionCell"];
    NSString *instance = [self.options objectAtIndex:indexPath.row];
    cell.mainLabel.text = instance;
    return cell;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"OpenGLContextViewSegue"]) {
        OpenGLContextViewController *openGLVC = segue.destinationViewController;
        NSIndexPath *indexPath = [self.optionsTableView indexPathForSelectedRow];
        openGLVC.filename = [self.options objectAtIndex:indexPath.row];
        [self.optionsTableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}

@end
