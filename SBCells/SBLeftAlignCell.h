//
//  SBLeftAlignCell.h
//  SBTableView
//
//  Created by Igor on 20/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SBLeftAlignCell : UITableViewCell
@property (nonatomic, strong) UIImageView *flagImageView;
@property (nonatomic, strong) UILabel *countryNameLabel;
@property (nonatomic, strong) UILabel *capitalLabel;
@end

NS_ASSUME_NONNULL_END
