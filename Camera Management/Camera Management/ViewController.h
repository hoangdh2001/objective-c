//
//  ViewController.h
//  Camera Management
//
//  Created by Do Huy Hoang on 19/08/2022.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate>
@property (strong, nonatomic) UIImagePickerController *imagePickerController;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)showCamera:(id)sender;

@end

