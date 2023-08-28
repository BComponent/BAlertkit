//
//  FFViewController.m
//  BAlertKit
//
//  Created by 1250829271@qq.com on 08/24/2023.
//  Copyright (c) 2023 1250829271@qq.com. All rights reserved.
//

#import "FFViewController.h"
#import <BPopupsManager.h>
#import "CenterPopView.h"
#import "BottomPopView.h"
#import "FullPopView.h"
#import "TopBarPopView.h"
#import "KeyboardPopView.h"
#import <Masonry/Masonry.h>
#import "LGOneController.h"

@interface FFViewController ()

@end

@implementation FFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"演示效果";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"开始演示" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickShow) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setTitle:@"优先级覆盖" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(clickShow1) forControlEvents:UIControlEventTouchUpInside];
    button1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button1];
    [button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(button);
        make.top.equalTo(button.mas_bottom).offset(10);
    }];
//
//    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button2 setTitle:@"通知条覆盖" forState:UIControlStateNormal];
//    [button2 addTarget:self action:@selector(clickShow2) forControlEvents:UIControlEventTouchUpInside];
//    button2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:button2];
//    [button2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(button);
//        make.top.equalTo(button1.mas_bottom).offset(10);
//    }];
}

- (void)clickShow {
    
//    BPopupConfigure *config = [[BPopupConfigure alloc] init];
//    config.sceneStyle = HLLPopupSceneCenter;
//    config.clickOutsideDismiss = YES;
//    config.cornerRadius = 8;
//    config.popAnimationStyle = HLLPopAnimationStyleScale;
//    config.priority = 200;
//    config.autoPop = YES;
//    config.popIsControllerView = YES;
//    LGOneController * vc = [LGOneController new];
//    [BPopupsManager addPopupController:vc options:config];
//    return;

    //追加优先级更高的弹框，或替换单前显示的优先级低的弹框
//    [self showBottomShare1];//100
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self showCenter1];//200
//    });
    [BPopupsManager defaultManager].prohibitAutoReplaceCurrentPop = YES;
    //追加优先级更高的弹框，不替换显示的对优先级弹框
    [self showBottomShare1];//100
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showFullAdvert];//300
        [self showCenter1];//200
    });
}

- (void)clickShow1 {
    
    
//    [self showBottomShare1];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self showCenter1];
//    });
}
//
//- (void)clickShow2 {
//    [self showTopbar];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self showTopbar1];
//    });
//}
//
//- (void)showMorePopView {
//    NSTimeInterval time = 0.5;
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self showCenter];
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [self showBottomShare];
//            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                [self showTopbar];
//                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                    [self showCenter];
//                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                        [self showBottomKeyboard];
//                    });
//                });
//            });
//        });
//    });
//}
//
- (void)showCenter {
    BPopupConfigure *config = [[BPopupConfigure alloc] init];
    config.sceneStyle = HLLPopupSceneCenter;
    config.clickOutsideDismiss = YES;
    config.cornerRadius = 8;
    config.popAnimationStyle = HLLPopAnimationStyleScale;
//    config.aloneMode = YES;
    config.priority = 200;
    config.autoPop = YES;
    CenterPopView *centerPopView = [[CenterPopView alloc] init];
    [BPopupsManager addPopup:centerPopView options:config];
}

- (void)showCenter1 {
    BPopupConfigure *config = [[BPopupConfigure alloc] init];
    config.sceneStyle = HLLPopupSceneCenter;
    config.clickOutsideDismiss = YES;
    config.cornerRadius = 8;
    config.popAnimationStyle = HLLPopAnimationStyleScale;
    config.priority = 200;
    config.clickOutsideDismiss = YES;
//    config.groupID = @"11";
    config.autoPop = YES;
    CenterPopView *centerPopView = [[CenterPopView alloc] init];
    centerPopView.popViewDismissBlock = ^{
//        [self showMorePopView];
//        [BPopupsManager dismissWithPopup:centerPopView];
    };
    [BPopupsManager addPopup:centerPopView options:config];
}

//- (void)showBottomShare {
//    BPopupConfigure *config = [[BPopupConfigure alloc] init];
//    config.sceneStyle = BPopupSceneHalfPage;
//    config.clickOutsideDismiss = YES;
//    config.cornerRadius = 8;
//    config.popAnimationStyle = BPopAnimationStyleScale;
//    config.dismissAnimationStyle = BDismissAnimationStyleFade;
//    config.aloneMode = YES;
//    BottomPopView *bottomSharePopView = [[BottomPopView alloc] init];
//    [BPopupsManager addPopup:bottomSharePopView options:config];
//}

- (void)showBottomShare1 {
    BPopupConfigure *config = [[BPopupConfigure alloc] init];
    config.sceneStyle = HLLPopupSceneHalfPage;
    config.clickOutsideDismiss = YES;
    config.cornerRadius = 8;
    config.popAnimationStyle = HLLPopAnimationStyleScale;
    config.dismissAnimationStyle = HLLDismissAnimationStyleFade;
    config.priority = 100;
    config.autoPop = YES;
//    config.groupID = @"22";
    BottomPopView *bottomSharePopView = [[BottomPopView alloc] init];
    [BPopupsManager addPopup:bottomSharePopView options:config];
}

- (void)showFullAdvert{
    BPopupConfigure *config = [[BPopupConfigure alloc] init];
    config.sceneStyle = HLLPopupSceneFull;
//    config.aloneMode = YES;
    config.dismissDuration = 5;
    config.autoPop = YES;
    config.priority = 300;
    FullPopView *popView = [[FullPopView alloc] init];
    __weak FullPopView * wpopView = popView;
    popView.popViewDismissBlock = ^{
//        [self showMorePopView];
//        [BPopupsManager dismissWithPopup:wpopView];
//        [BPopupsManager popNextViewAllGroup];
    };
    [BPopupsManager addPopup:popView options:config];
}

//- (void)showTopbar{
//    BPopupConfigure *config = [[BPopupConfigure alloc] init];
//    config.sceneStyle = BPopupSceneTopNoticeView;
//    config.dismissDuration = 3;
//    config.cornerRadius = 8;
//    config.aloneMode = YES;
//    TopBarPopView *topBar = [[TopBarPopView alloc] init];
//    [BPopupsManager addPopup:topBar options:config];
//}
//
//- (void)showTopbar1{
//    BPopupConfigure *config = [[BPopupConfigure alloc] init];
//    config.sceneStyle = BPopupSceneTopNoticeView;
//    config.dismissDuration = 3;
//    config.cornerRadius = 8;
//    config.priority = 100;
//    TopBarPopView *topBar = [[TopBarPopView alloc] init];
//    [BPopupsManager addPopup:topBar options:config];
//}
//
//- (void)showBottomKeyboard{
//    BPopupConfigure *config = [[BPopupConfigure alloc] init];
//    config.sceneStyle = BPopupSceneHalfPage;
//    config.cornerRadius = 8;
//    config.aloneMode = YES;
//    config.clickOutsideDismiss = YES;
//    KeyboardPopView *popView = [[KeyboardPopView alloc] init];
//    [BPopupsManager addPopup:popView options:config];
//}

- (void)dealloc {
    NSLog(@"控制器释放");
}

@end
