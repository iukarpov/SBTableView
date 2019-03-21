//
//  SBTableData.h
//  SBTableView
//
//  Created by Igor on 20/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface SBCountry : NSObject

@property (nonatomic, strong) UIImage *flag;
@property (nonatomic, copy) NSString *countryName;
@property (nonatomic, copy) NSString *countryCapital;

- (instancetype) initWithCountryFlag: (UIImage *) flag countryName: (NSString *) countryName countryCapital: (NSString *) countryCapital;

@end
NS_ASSUME_NONNULL_END
