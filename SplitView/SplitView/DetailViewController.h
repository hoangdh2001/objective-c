//
//  DetailViewController.h
//  SplitView
//
//  Created by Do Huy Hoang on 18/08/2022.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UISplitViewControllerDelegate>
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

