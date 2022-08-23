//
//  MyTextField.h
//  AutoLayout-lession-4
//
//  Created by Do Huy Hoang on 22/08/2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface MyTextField : UITextField
@property (nonatomic, strong) IBInspectable UIImage *prefixIcon;
@property (nonatomic, strong) IBInspectable UIColor *iconColor;
@property (nonatomic, assign) IBInspectable CGFloat leftPadding;
@end

NS_ASSUME_NONNULL_END
