//
//  MyTextField.m
//  AutoLayout-lession-4
//
//  Created by Do Huy Hoang on 22/08/2022.
//

#import "MyTextField.h"

@implementation MyTextField

- (void)setPrefixIcon:(UIImage *)prefixIcon {
    if (_prefixIcon != prefixIcon) {
        _prefixIcon = prefixIcon;
        [self updateView];
    }
}

- (void) setIconColor:(UIColor *)iconColor {
    if (_iconColor != iconColor) {
        _iconColor = iconColor;
        [self updateView];
    }
}

- (void) setLeftPadding:(CGFloat)leftPadding {
    if (_leftPadding != leftPadding) {
        _leftPadding = leftPadding;
        [self updateView];
    }
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    CGRect textRect = [super leftViewRectForBounds:bounds];
    textRect.origin.x += _leftPadding;
    return textRect;
}

- (void)updateView {
    UIImage *prefixIcon = _prefixIcon;
    if (prefixIcon) {
        self.leftViewMode = UITextFieldViewModeAlways;
        UIImageView *imageView = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 20, 20)];
        imageView.contentMode =  UIViewContentModeScaleAspectFit;
        imageView.image = prefixIcon;
        imageView.tintColor = _iconColor;
        self.leftView = imageView;
    } else {
        self.leftViewMode = UITextFieldViewModeNever;
        self.leftView = nil;
    }
}

@end
