//
//  SBAnimations.m
//  SBTableView
//
//  Created by Igor on 26/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

#import "SBAnimations.h"

@implementation SBAnimations

- (void)shakeCell:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    CABasicAnimation* shake  = [CABasicAnimation animationWithKeyPath:@"position"];
    [shake setDuration:0.1];
    [shake setRepeatCount:3];
    [shake setAutoreverses:YES];
    [shake setFromValue:[NSValue valueWithCGPoint: CGPointMake(cell.center.x - 5,cell.center.y)]];
    [shake setToValue:[NSValue valueWithCGPoint: CGPointMake(cell.center.x + 5, cell.center.y)]];
    [cell.layer addAnimation:shake forKey:@"position"];
}

- (void)animateCellAppearance:(UITableViewCell *)cell
{
    cell.alpha = 0;
    CATransform3D transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0);
    cell.layer.transform = transform;
    [UIView animateWithDuration:1.0 animations:^{
        cell.alpha = 1.0;
        cell.layer.transform = CATransform3DIdentity;
    }];
}



@end
