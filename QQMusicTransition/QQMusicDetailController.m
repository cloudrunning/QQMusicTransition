//
//  QQMusicDetailController.m
//  QQMusicTransition
//
//  Created by caozhen@neusoft on 16/9/9.
//  Copyright © 2016年 Neusoft. All rights reserved.
//

#import "QQMusicDetailController.h"

@interface QQMusicDetailController ()
@property (weak, nonatomic) IBOutlet UIImageView *singerBigImageView;

@end

@implementation QQMusicDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissAction:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
