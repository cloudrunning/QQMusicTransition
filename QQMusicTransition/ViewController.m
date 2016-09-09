//
//  ViewController.m
//  QQMusicTransition
//
//  Created by caozhen@neusoft on 16/9/9.
//  Copyright © 2016年 Neusoft. All rights reserved.
//

#import "ViewController.h"
#import "QQMusicDetailController.h"
#import "QQMusicPresentTransition.h"
#import "QQMusicDismissTransition.h"

@interface ViewController () <UIViewControllerTransitioningDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *singerImageView;
@property (weak, nonatomic) IBOutlet UIView *musicContentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark ---- UIViewControllerTransitioningDelegate

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
    return [[QQMusicPresentTransition alloc]init];
}
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    
    return [[QQMusicDismissTransition alloc]init];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"MusicDetailController"]) {
        QQMusicDetailController *detail = [segue destinationViewController];
        detail.transitioningDelegate = self;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
