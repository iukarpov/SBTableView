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
        [self.contentView addSubview:_flagImageView];
        
        _countryNameLabel = [UILabel new];
        [self.contentView addSubview:_countryNameLabel];
        _countryNameLabel.textAlignment = NSTextAlignmentRight;
        
        _capitalLabel = [UILabel new];
        _capitalLabel.textAlignment = NSTextAlignmentRight;
        [_capitalLabel setFont:[UIFont systemFontOfSize:14]];
        [self.contentView addSubview:_capitalLabel];
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
