//
//  OptionCell.m
//  MyOpenGL
//
//  Created by Johnathan Stansbury on 10/6/12.
//  Copyright (c) 2012 LSU. All rights reserved.
//

#import "optionCell.h"

@implementation optionCell
@synthesize mainLabel = _mainLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
