//
//  SBCountryList.m
//  SBTableView
//
//  Created by Igor on 21/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import "SBCountryList.h"

@implementation SBCountryList;
@synthesize countryList;

- (NSMutableArray *)getCountriesList
{
    NSMutableArray *countriesArray = [NSMutableArray array];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"usa"] countryName:@"USA" countryCapital:@"Washington"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"germany"] countryName:@"Germany" countryCapital:@"Berlin"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"france"] countryName:@"France" countryCapital:@"Paris"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"poland"] countryName:@"Poland" countryCapital:@"Warsaw"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"italy"] countryName:@"Italy" countryCapital:@"Rome"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"ireland"] countryName:@"Irelan" countryCapital:@"Dublin"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"netherlands"] countryName:@"Netherlands" countryCapital:@"Amsterdam"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"uk"] countryName:@"United Kingdom" countryCapital:@"London"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"portugal"] countryName:@"Portugal" countryCapital:@"Lisbon"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"usa"] countryName:@"USA" countryCapital:@"Washington"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"germany"] countryName:@"Germany" countryCapital:@"Berlin"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"france"] countryName:@"France" countryCapital:@"Paris"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"poland"] countryName:@"Poland" countryCapital:@"Warsaw"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"italy"] countryName:@"Italy" countryCapital:@"Rome"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"ireland"] countryName:@"Irelan" countryCapital:@"Dublin"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"netherlands"] countryName:@"Netherlands" countryCapital:@"Amsterdam"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"uk"] countryName:@"United Kingdom" countryCapital:@"London"]];
    [countriesArray addObject:[[SBCountry alloc] initWithCountryFlag:[UIImage imageNamed:@"portugal"] countryName:@"Portugal" countryCapital:@"Lisbon"]];
    return countriesArray;
}

@end
