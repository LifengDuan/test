//
//  NSArray+HHAddition.m
//

#import "NSArray+HHAddition.h"
#import "NSObject+HHAddition.h"

@implementation NSArray (HHAddition)

+ (NSArray *)hh_objectListWithPlistName:(NSString *)plistName clsName:(NSString *)clsName {
    NSURL *url = [[NSBundle mainBundle] URLForResource:plistName withExtension:nil];
    NSArray *list = [NSArray arrayWithContentsOfURL:url];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    Class cls = NSClassFromString(clsName);
    NSAssert(cls, @"加载 plist 文件时指定的 clsName - %@ 错误", clsName);
    
    for (NSDictionary *dict in list) {
        [arrayM addObject:[cls hh_objectWithDict:dict]];
    }
    
    return arrayM.copy;
}

@end
