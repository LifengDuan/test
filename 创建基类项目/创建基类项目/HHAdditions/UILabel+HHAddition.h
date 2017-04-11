//
//  UILabel+HHAddition.h

//

#import <UIKit/UIKit.h>

@interface UILabel (HHAddition)

/// 创建文本标签
///
/// @param text     文本
/// @param fontSize 字体大小
/// @param color    颜色
///
/// @return UILabel
+ (instancetype)hh_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color;

@end
