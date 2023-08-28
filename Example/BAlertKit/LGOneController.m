//
//  LGOneController.m
//  PopupsManager_Example
//
//  Created by 王宝明 on 2023/8/24.
//  Copyright © 2023 liuzf. All rights reserved.
//

#import "LGOneController.h"

@interface LGOneController ()

@end

@implementation LGOneController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
}


- (UIView *)supplyCustomPopupView {
    return self;
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
