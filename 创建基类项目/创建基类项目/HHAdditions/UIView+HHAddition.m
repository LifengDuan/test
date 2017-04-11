//
//  UIView+HHAddition.m
//

#import "UIView+HHAddition.h"

@implementation UIView (HHAddition)

- (UIImage *)hh_snapshotImage {

    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return result;
}

@end
