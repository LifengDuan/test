//
//  NSObject+HHAddition.m
//

#import "NSObject+HHAddition.h"

@implementation NSObject (HHAddition)

/// 使用字典创建模型对象
///
/// @param dict 字典
///
/// @return 模型对象
+ (instancetype)hh_objectWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}

@end
