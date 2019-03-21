//
//  SBCountryList.h
//  SBTableView
//
//  Created by Igor on 21/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBCountry.h"

NS_ASSUME_NONNULL_BEGIN

@interface SBCountryList : NSObject

@property (nonatomic, strong) NSMutableArray *countryList;

- (NSMutableArray *) getCountriesList;

@end

NS_ASSUME_NONNULL_END
