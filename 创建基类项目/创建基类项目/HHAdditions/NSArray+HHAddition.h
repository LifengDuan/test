//
//  NSArray+HHAddition.h
//

#import <Foundation/Foundation.h>

@interface NSArray (HHAddition)

/// 从 plist 文件创建指定 clsName 对象数组
///
/// @param plistName plist 文件名
/// @param clsName   要创建模型的类名
///
/// @return clsName 的对象数组
+ (NSArray *)hh_objectListWithPlistName:(NSString *)plistName clsName:(NSString *)clsName;

@end
