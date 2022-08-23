//
//  MyImageView.m
//  AutoLayout-lession-4
//
//  Created by Do Huy Hoang on 23/08/2022.
//

#import "MyImageView.h"

@implementation MyImageView

- (void)setCornerRadius:(CGFloat)cornerRadius {
    if (_cornerRadius != cornerRadius) {
        _cornerRadius = cornerRadius;
        [self updateView];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.clipsToBounds = true;
    }
    return self;
}

- (void) updateView {
    self.layer.cornerRadius = _cornerRadius;
}

@end
