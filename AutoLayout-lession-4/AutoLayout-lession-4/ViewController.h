//
//  ViewController.h
//  AutoLayout-lession-4
//
//  Created by Do Huy Hoang on 22/08/2022.
//

#import <UIKit/UIKit.h>
#import "MyTextField.h"

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (nonatomic, strong) UITextField *activeField;
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UITextField *username;
@property (nonatomic, strong) IBOutlet UITextField *password;
@end

