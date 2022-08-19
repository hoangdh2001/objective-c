//
//  ViewController.m
//  ViewTransitions
//
//  Created by Do Huy Hoang on 19/08/2022.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *view1;
@property (strong, nonatomic) UIView *view2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
    // Do any additional setup after loading the view.
}

- (void)setUpView {
    self.view1 = [[UIView alloc] initWithFrame:self.view.frame];
    self.view1.backgroundColor = [UIColor lightTextColor];
    self.view2 = [[UIView alloc]initWithFrame:self.view.frame];
    self.view2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.view1];
    [self.view sendSubviewToBack:self.view1];
}

- (void) doTransitionWithType: (UIViewAnimationTransition)animationTransitionType {
    if ([[self.view subviews] containsObject:self.view2]) {
        [UIView transitionFromView:self.view2 toView:self.view1 duration:2 options:animationTransitionType completion:^(BOOL finished) {
            [self.view2 removeFromSuperview];
        }];
        [self.view addSubview:self.view1];
        [self.view sendSubviewToBack:self.view1];
    } else {
        [UIView transitionFromView:self.view1 toView:self.view2 duration:2 options:animationTransitionType completion:^(BOOL finished) {
                    [self.view1 removeFromSuperview];
        }];
        [self.view addSubview:self.view2];
        [self.view sendSubviewToBack:self.view2];
    }
}

- (void)flipFromLeft:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromLeft];
}

- (void)flipFromTop:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromTop];
}

- (void)flipFromRight:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromRight];
}

- (void)flipFromBototm:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromBottom];
}

- (void)curlUp:(id)sender {
    [self doTransitionWithType:UIViewAnimationTransitionCurlUp];
}

- (void)curlDown:(id)sender {
    [self doTransitionWithType:UIViewAnimationTransitionCurlDown];
}

- (void)dissolve:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionCrossDissolve];
}

- (void)noTransition:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionNone];
}


@end
