//
//  NSObject+HHAddition.h
//

#import <Foundation/Foundation.h>

@interface NSObject (HHAddition)

/// 使用字典创建模型对象
///
/// @param dict 字典
///
/// @return 模型对象
+ (instancetype)hh_objectWithDict:(NSDictionary *)dict;

@end
