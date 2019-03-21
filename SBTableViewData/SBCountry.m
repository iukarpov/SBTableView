//
//  SBTableData.m
//  SBTableView
//
//  Created by Igor on 20/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import "SBCountry.h"

@implementation SBCountry

@synthesize flag;
@synthesize countryName;
@synthesize countryCapital;

- (instancetype)initWithCountryFlag:(UIImage *)flag countryName:(NSString *)countryName countryCapital:(NSString *)countryCapital
{
    self = [super init];
    if (self)
    {
        self.flag = flag;
        self.countryName = countryName;
        self.countryCapital = countryCapital;
    }
    return self;
}


@end
