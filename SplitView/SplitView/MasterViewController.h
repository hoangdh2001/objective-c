//
//  ViewController.h
//  SplitView
//
//  Created by Do Huy Hoang on 18/08/2022.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@end

