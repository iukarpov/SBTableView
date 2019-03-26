//
//  SBAnimations.h
//  SBTableView
//
//  Created by Igor on 26/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SBAnimations : NSObject
- (void)shakeCell:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath;
- (void)animateCellAppearance:(UITableViewCell *)cell;
@end

NS_ASSUME_NONNULL_END


//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
