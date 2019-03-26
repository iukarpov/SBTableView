//
//  SBLeftAlignCell.m
//  SBTableView
//
//  Created by Igor on 20/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import "SBLeftAlignCell.h"

@implementation SBLeftAlignCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _flagImageView = [UIImageView new];
        [self.contentView addSubview:_flagImageView];
        
        _countryNameLabel = [UILabel new];
        [self.contentView addSubview:_countryNameLabel];
        
        _capitalLabel = [UILabel new];
        [_capitalLabel setFont:[UIFont systemFontOfSize:14]];
        [self.contentView addSubview:_capitalLabel];
        
        CAGradientLayer *gradient = [CAGradientLayer new];
        gradient.frame = CGRectMake(0, 0, self.contentView.frame.size.width+70, 60);
        gradient.colors = @[(id)[UIColor whiteColor].CGColor, (id)[UIColor colorWithRed:209.0f/255.0f green:224.0f/255.0f blue:224.0f/255.0f alpha:1.0f].CGColor];
        gradient.locations = [NSArray arrayWithObjects:[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:1.0], nil];
        [self.contentView.layer insertSublayer:gradient atIndex:0];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.flagImageView.frame = CGRectMake(20.f, 10.f, 40.f, 40.f);
    self.countryNameLabel.frame = CGRectMake(CGRectGetMaxX(self.flagImageView.frame) + 20.f, CGRectGetMinY(self.flagImageView.frame), 130.f, 20.f);
    self.capitalLabel.frame = CGRectMake(CGRectGetMaxX(self.flagImageView.frame) + 20.f, CGRectGetMaxY(self.countryNameLabel.frame), 130.f,20.f);
}

@end
