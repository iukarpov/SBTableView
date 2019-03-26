//
//  ViewController.m
//  SBTableView
//
//  Created by Igor on 20/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import "SBViewController.h"
#import "SBRightAlignCell.h"
#import "SBLeftAlignCell.h"
#import "SBCountry.h"
#import "SBCountryList.h"
#import "SBAnimations.h"

@interface SBViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *countriesList;

@end

@implementation SBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.countriesList = [[SBCountryList new] getCountriesList];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    [self.tableView registerClass:[SBLeftAlignCell class] forCellReuseIdentifier:NSStringFromClass([SBLeftAlignCell class])];
    [self.tableView registerClass:[SBRightAlignCell class] forCellReuseIdentifier:NSStringFromClass([SBRightAlignCell class])];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.countriesList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (indexPath.row % 2 == 0)
    {
        SBLeftAlignCell *leftAlignCell = [tableView  dequeueReusableCellWithIdentifier:NSStringFromClass([SBLeftAlignCell class])];
        leftAlignCell.countryNameLabel.text = [self.countriesList[indexPath.row] countryName];
        leftAlignCell.capitalLabel.text = [self.countriesList[indexPath.row] countryCapital];
        leftAlignCell.flagImageView.image = [self.countriesList[indexPath.row] flag];
        return leftAlignCell;
    }
    else
    {
        SBRightAlignCell *rightAlignCell = [tableView  dequeueReusableCellWithIdentifier:NSStringFromClass([SBRightAlignCell class])];
        rightAlignCell.countryNameLabel.text = [self.countriesList[indexPath.row] countryName];
        rightAlignCell.capitalLabel.text = [self.countriesList[indexPath.row] countryCapital];
        rightAlignCell.flagImageView.image = [self.countriesList[indexPath.row] flag];
        return rightAlignCell;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[SBAnimations new] animateCellAppearance:cell];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[SBAnimations new] shakeCell:tableView atIndexPath:indexPath];
    
    NSString *title = [self.countriesList[indexPath.row] countryName];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *confirmAlert = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertController dismissViewControllerAnimated:NO completion:nil];
    }];
    [alertController addAction:confirmAlert];
    [self presentViewController:alertController animated:YES completion:nil];
}
@end

