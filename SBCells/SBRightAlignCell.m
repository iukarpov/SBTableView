//
//  SBRightAlignCell.m
//  SBTableView
//
//  Created by Igor on 20/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import "SBRightAlignCell.h"

@implementation SBRightAlignCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _flagImageView = [UIImageView new];
     //   _flagImageView.backgroundColor = UIColor.clearColor;
        [self.contentView addSubview:_flagImageView];
        
        _countryNameLabel = [UILabel new];
        [self.contentView addSubview:_countryNameLabel];
        _countryNameLabel.textAlignment = NSTextAlignmentRight;
        
        _capitalLabel = [UILabel new];
        _capitalLabel.textAlignment = NSTextAlignmentRight;
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
    self.flagImageView.frame = CGRectMake(CGRectGetMaxX(self.contentView.frame) - 60.f, 10.f, 40.f, 40.f);
    self.countryNameLabel.frame = CGRectMake(CGRectGetMinX(self.flagImageView.frame) - 170.f, CGRectGetMinY(self.flagImageView.frame), 150.f, 20.f);
    self.capitalLabel.frame = CGRectMake(CGRectGetMinX(self.flagImageView.frame) - 90.f, CGRectGetMaxY(self.countryNameLabel.frame), 70.f,20.f);
}


@end
