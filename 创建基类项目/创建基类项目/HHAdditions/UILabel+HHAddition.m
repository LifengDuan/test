//
//  UILabel+HHAddition.m
//

#import "UILabel+HHAddition.h"

@implementation UILabel (HHAddition)

+ (instancetype)hh_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color {
    UILabel *label = [[self alloc] init];
    
    label.text = text;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    label.numberOfLines = 0;
    
    return label;
}

@end
