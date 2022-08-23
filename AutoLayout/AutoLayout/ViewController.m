//
//  ViewController.m
//  AutoLayout
//
//  Created by Do Huy Hoang on 19/08/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"Hello %@", [sender titleLabel].text);
    if ([[sender titleLabel].text isEqualToString:@"X"]) {
        [sender setTitle:@"A very long title for this button" forState:UIControlStateNormal];
    } else {
        [sender setTitle:@"X" forState:UIControlStateNormal];
    }
}

@end
