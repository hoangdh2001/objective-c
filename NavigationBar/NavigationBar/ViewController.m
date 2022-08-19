//
//  ViewController.m
//  NavigationBar
//
//  Created by Do Huy Hoang on 18/08/2022.
//

#import "ViewController.h"
#import "TempViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *navButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addNavigationBarButton];
}

- (IBAction)pushNewView:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Temp" bundle:nil];
    TempViewController *tempVC = [storyBoard instantiateViewControllerWithIdentifier:@"TempViewController"];
    [self.navigationController pushViewController:tempVC animated:YES];
}

- (IBAction)myButtonClicked:(id)sender {
    [self.navButton setHidden:!self.navButton.hidden];
}

- (void)addNavigationBarButton {
    UIBarButtonItem *myButton = [[UIBarButtonItem alloc] initWithTitle:@"MyButton" style:UIBarButtonItemStylePlain target:self action:@selector(myButtonClicked:)];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    [self.navigationItem setRightBarButtonItem:myButton];
}

@end
