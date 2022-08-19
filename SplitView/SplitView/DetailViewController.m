//
//  DetailViewController.m
//  SplitView
//
//  Created by Do Huy Hoang on 18/08/2022.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)detailItem {
    if (self.detailItem != detailItem) {
        self.detailItem = detailItem;
    }
    
    [self configurationView];
}

- (void) configurationView {
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController
   willHideViewController:(UIViewController *)viewController withBarButtonItem:
   (UIBarButtonItem *)barButtonItem forPopoverController:
   (UIPopoverController *)popoverController {
   barButtonItem.title = NSLocalizedString(@"Master", @"Master");
   [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
   self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController
   willShowViewController:(UIViewController *)viewController
   invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
   [self.navigationItem setLeftBarButtonItem:nil animated:YES];
   self.masterPopoverController = nil;
}

@end
