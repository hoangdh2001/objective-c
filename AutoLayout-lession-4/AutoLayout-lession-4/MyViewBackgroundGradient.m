//
//  MyViewBackgroundGradient.m
//  AutoLayout-lession-4
//
//  Created by Do Huy Hoang on 22/08/2022.
//

#import "MyViewBackgroundGradient.h"

@implementation MyViewBackgroundGradient

+ (Class)layerClass {
    return [CAGradientLayer self];
}

- (void)setFirstColor:(UIColor *)firstColor {
    if (_firstColor != firstColor) {
        _firstColor = firstColor;
        [self updateView];
    }
}

- (void)setSecondColor:(UIColor *)secondColor {
    if (_secondColor != secondColor) {
        _secondColor = secondColor;
        [self updateView];
    }
}

- (void)updateView {
    CAGradientLayer *gradient = (CAGradientLayer *) self.layer;
    gradient.colors = @[(id) _firstColor.CGColor, (id) _secondColor.CGColor];
    gradient.locations = @[@0, @0.7];
}

@end
