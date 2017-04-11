//
//  UIScreen+HHAddition.m
//

#import "UIScreen+HHAddition.h"

@implementation UIScreen (HHAddition)

+ (CGFloat)hh_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)hh_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)hh_scale {
    return [UIScreen mainScreen].scale;
}

@end
