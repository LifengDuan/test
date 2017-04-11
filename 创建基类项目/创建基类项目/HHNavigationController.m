//
//  HHNavigationController.m
//

#import "HHNavigationController.h"
@interface HHNavigationController ()

@end

@implementation HHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 此属性只能修改44高度导航条自己的背景颜色
    //    self.navigationBar.backgroundColor = [UIColor yellowColor];
    
    
    //    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar7"] forBarMetrics:UIBarMetricsDefault];
    //
    
    
    /************* 以下两行代码才能把导航条下面的黑线去掉  *********/
    // 把导航条自带的背景图片清空
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    // 给导航条下面的阴影图片清空
    self.navigationBar.shadowImage = [[UIImage alloc] init];
    

    
    // 让导航条没有半透明效果
    self.navigationBar.translucent = NO;
    
    // 设置导航条的背景颜色"包括状态栏后面的颜色也一起改了"
    self.navigationBar.barTintColor = [UIColor hh_colorWithHex:0x1e82d2];
    
    // 可以创建一个label设置给它的titleView属性
//    self.navigationItem.titleView
    
    // 设置导航条中间标题文字属性来更改文字颜色及文字字体
    // NSFontAttributeName此KEY表示的是字体
    // NSForegroundColorAttributeName 此KEY文字颜色
    self.navigationBar.titleTextAttributes = @{NSFontAttributeName : [UIFont systemFontOfSize:14], NSForegroundColorAttributeName : [UIColor whiteColor]};
    
}

// 让状态栏为白色
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

// 导航控制器把设置状态栏的权限交给当前的栈顶控制器去处理
// topViewController此属性表示获取当前导航控制器的栈顶控制器
//- (UIViewController *)childViewControllerForStatusBarStyle {
//    return self.topViewController;
//}

//- (UIViewController *)childViewControllerForStatusBarHidden {
//    return self.topViewController;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
