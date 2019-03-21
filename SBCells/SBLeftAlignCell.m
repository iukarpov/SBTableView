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
