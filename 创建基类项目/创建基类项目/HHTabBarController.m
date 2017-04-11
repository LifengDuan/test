//
//  HHTabBarController.m
//
//

//

#import "HHTabBarController.h"

#import "HHNavigationController.h"

@interface HHTabBarController ()

@end

@implementation HHTabBarController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建四个子控制器并设置它的相应内容
    UIViewController *vc1 = [self loadChildViewControllerWithClassName:@"HHAViewController" andTitle:@"云购" andImageName:@"TabBar_HomeBar"];
    UIViewController *vc2 = [self loadChildViewControllerWithClassName:@"HHBViewController" andTitle:@"口碑" andImageName:@"TabBar_Businesses"];
    
//    UIStoryboard *businessSb = [UIStoryboard storyboardWithName:@"ZFBBusiness" bundle:nil];
//   UIViewController *vc2 = [businessSb instantiateInitialViewController];
    
//   UIViewController *vc2 = [self loadChildViewControllerWithStoryBoard:@"HHBViewController" andTitle:@"口碑" andImageName:@"TabBar_Businesses"];
    
    
    UIViewController *vc3 = [self loadChildViewControllerWithClassName:@"HHCViewController" andTitle:@"朋友" andImageName:@"TabBar_Friends"];
    UIViewController *vc4 = [self loadChildViewControllerWithClassName:@"HHDViewController" andTitle:@"我的" andImageName:@"TabBar_Assets"];
    
    // 给标签控制器添加子控制器
    self.viewControllers = @[vc1, vc2, vc3, vc4];
    
    // 让tabBar没有半透明效果,还会影响它里面view的高度"默认view的最底部是贴着屏幕的最底部,如果氢此属性设置为NO,view的底部只到tabBar的顶部"
    self.tabBar.translucent = NO;
    
    // 设置标签栏的主题颜色"它会影响标签栏上的所有文字颜色"
    self.tabBar.tintColor = [UIColor hh_colorWithHex:0x1e82d2];
}

/**
 此方法中通过alloc方式创建及设置子控制器的内容
 
 @param className 控制器类名字符串
 @param title     标签上显示的标题
 @param imageName 标签栏上显示的图片
 */
- (UIViewController *)loadChildViewControllerWithClassName:(NSString *)className andTitle:(NSString *)title andImageName:(NSString *)imageName {
    
    
    
    
    // 把类名的字符串转成类的类型
    Class class =  NSClassFromString(className);
    // 通过转换出来的类的类型来创建控制器
    UIViewController *vc = [[class alloc] init];
    
    // 设置标签栏上对应控制器的标题
    //    vc.tabBarItem.title = title;
    //    vc.navigationItem.title
    // 设置控制器的标题会影响它的导航条或标签栏上的标题
    vc.title = title;
    // 设置默认状态的图片
    vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 拼接选中状态的图片
    NSString *selectedImageName = [imageName stringByAppendingString:@"_Sel"];
    // 设置选中图片
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vc.view.backgroundColor =  [UIColor whiteColor];
    
    // 创建导航控制器
    HHNavigationController *nav = [[HHNavigationController alloc] initWithRootViewController:vc];
    
    
    // 返回导航控制器"导航控制器中又添加了一个根控制器"
    return nav;
}


/**
 此方法中通过加载sb来创建控制器及设置子控制器的内容
 
 @param className 控制器类名字符串
 @param title     标签上显示的标题
 @param imageName 标签栏上显示的图片
 */
- (UIViewController *)loadChildViewControllerWithStoryBoard:(NSString *)sbName andTitle:(NSString *)title andImageName:(NSString *)imageName {
    
    // 加载指定名称的sb
    UIStoryboard *sb = [UIStoryboard storyboardWithName:sbName bundle:nil];
    // 实例化sb中箭头所指定的控制器
   UIViewController *vc = [sb instantiateInitialViewController];
    
    // 设置标签栏上对应控制器的标题
//    vc.tabBarItem.title = title;
//    vc.navigationItem.title
    // 设置控制器的标题会影响它的导航条或标签栏上的标题
    vc.title = title;
    // 设置默认状态的图片
    vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 拼接选中状态的图片
    NSString *selectedImageName = [imageName stringByAppendingString:@"_Sel"];
    // 设置选中图片
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vc.view.backgroundColor =  [UIColor whiteColor];
    
    
    // 创建导航控制器
    HHNavigationController *nav = [[HHNavigationController alloc] initWithRootViewController:vc];
    

    // 返回导航控制器"导航控制器中又添加了一个根控制器"
    return nav;
}


@end
