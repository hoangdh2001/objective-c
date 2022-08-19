//
//  ViewController.h
//  Pickers
//
//  Created by Do Huy Hoang on 19/08/2022.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) UITextField *myTextField;
@property (strong, nonatomic) UIPickerView *myPickerView;
@property (strong, nonatomic) NSArray *pickerArray;
@end

