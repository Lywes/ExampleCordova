//
//  CDVWebMainController.m
//  vt
//
//  Created by v2 on 16/5/20.
//  Copyright © 2016年 李红(410139419@qq.com). All rights reserved.
//

#import "CDVWebMainController.h"
#import "AppDelegate.h"
#import "CDVWebObserverPlugin.h"


static NSString* const UserName = @"18585436699";

static NSString* const Version = @"400005";

@interface CDVWebMainController ()
{
    BOOL _isNeedLogin;
    
    BOOL _isServerNeedUserName;
    
    NSURL *_refreshURL;
}
@end

@implementation CDVWebMainController
- (id)init
{
    self = [super init];
    if (self) {
        
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(finishLoad:) name:CDVPageDidLoadNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(startLoad:) name:CDVPluginResetNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(shouldStartLoad:) name:CDVPluginWebShouldStartLoadNotification object:nil];
    if (![self checkUserLogin]) {//团购界面且未登录则返回
        return;
    }
    
    
    
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
    
}

#pragma mark 私有方法
- (void)loadUrl
{
//    NSURLRequest *request = notifi.object;
    _refreshURL = [self.webViewEngine URL];
    [self.webViewEngine loadRequest:[NSURLRequest requestWithURL:_refreshURL]];
    [self registerDeveiceInfoForWeb];
}

// 向window.Device注册信息,用于H5版团购
- (void)registerDeveiceInfoForWeb {
    NSString *userName = UserName;
    NSString *script = nil;
    if (!userName) {
        userName = @"";
    }
    
    script = [NSString stringWithFormat:@"window.Device={v2gogoapp:{os:'iOS',version:'%@',username:'%@'}}",Version,userName];
    
    [self.webViewEngine evaluateJavaScript:script completionHandler:^(id obj, NSError *error) {
        
    }];
    
}

#pragma mark - 处理URL
- (NSString *)checkURLFragment:(NSString *)URLString {
    NSString *l = @"#login",*u = @"#username";
    // 若url中包含#lgoin字符串，那么服务器希望客户端在访问此URL时客户度是登录状态,若客户端没有登录那么提示用户登录.
    _isNeedLogin = ([URLString rangeOfString:l].location != NSNotFound);
    
    // 若url中包含#username字符串，那么服务器希望客户端将登录的用户名附加到查询字符串中传递给服务器
    _isServerNeedUserName = ([URLString rangeOfString:u].location != NSNotFound);
    
    URLString = [URLString stringByReplacingOccurrencesOfString:l withString:@""];
    URLString = [URLString stringByReplacingOccurrencesOfString:u withString:@""];
    return URLString;
}

#pragma mark 校验登录

/**
 *  校验是否需要弹出登录框
 *
 *  @return 是否
 */
- (BOOL)checkNeedShowLogin
{
    if (_isNeedLogin || _isServerNeedUserName) {
        
        BOOL needShow = ![self checkUserLogin];
        
        return needShow;
    }

//    //每次进入页面的时候判断是否弹出登录框
    [self checkURLFragment:_refreshURL.absoluteString];
    if (_isNeedLogin || _isServerNeedUserName) {//如果需要登录 则重新调用一次方法
        BOOL needShow = [self checkNeedShowLogin];
        return needShow;
    }
    
    return NO;
}

- (BOOL)checkUserLogin
{
    return YES;
}
#pragma mark kTabBarItemChangeNotifaction
- (void)tabBarChanged
{
    //每次进入页面的时候判断是否弹出登录框
    [self checkUserLogin];
}

/**
 *  切换到相应界面
 */
- (void)switchTabbar
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  开始加载页面
 *
 *  @param notifi 通知
 */
- (void)startLoad:(NSNotification *)notifi
{
    [self registerDeveiceInfoForWeb];
}

/**
 *  完成加载页面
 *
 *  @param notifi 通知
 */
- (void)finishLoad:(NSNotification *)notifi
{
    [self registerDeveiceInfoForWeb];
}

/**
 *  是否需要加载页面的监听
 *
 *  @param notifi 通知
 */
- (void)shouldStartLoad:(NSNotification *)notifi
{
    [self registerDeveiceInfoForWeb];
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
