//
//  MyLabel.m
//  AutoLayout-lession-4
//
//  Created by Do Huy Hoang on 22/08/2022.
//

#import "MyLabel.h"

@implementation MyLabel

- (void)setPrefixIcon:(UIImage *)prefixIcon {
    if (_prefixIcon != prefixIcon) {
        _prefixIcon = prefixIcon;
        [self updateView];
    }
}

- (void) updateView {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = _prefixIcon;

    NSAttributedString *attachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
    NSAttributedString *text = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@" %@", self.text]];

    NSMutableAttributedString *myString= [[NSMutableAttributedString alloc] initWithString:@""];
    [myString appendAttributedString:attachmentString];
    [myString appendAttributedString:text];
    
    self.attributedText = myString;
}
@end
